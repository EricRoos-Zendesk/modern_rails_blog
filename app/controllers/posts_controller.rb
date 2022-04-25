class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy set_post ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all.select(:id).order(posted_at: :desc)
    render Pages::PostsPageComponent.new(posts: @posts)
  end

  # GET /posts/1 or /posts/1.json
  def show
    respond_to do |format|
      format.html do
        render Pages::PostPageComponent.new(post: @post)
      end
      format.turbo_stream
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    render Pages::EditPostPageComponent.new(post: @post)
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params.merge(posted_at: DateTime.now, user: current_user))

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def assign_vote
    @post.vote_by voter: current_user, vote: vote_param if vote_param
    respond_to do |format|
      format.turbo_stream
    end
  end

  private
   
    def vote_param
      return 'like' if prams[:vote] == "1" ? 'like' : 'bad'
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Rails.cache.fetch([:post, params[:id], Post.updated_at_for(params[:id])]) do
        @post = Post.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
