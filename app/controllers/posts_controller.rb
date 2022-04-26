class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy applaud applauds ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all.select(:id).order(posted_at: :desc)
    render Pages::PostsPageComponent.new(posts: @posts)
  end

  def recent

  end

  # GET /posts/1 or /posts/1.json
  def show
    respond_to do |format|
      format.html do
        render Pages::PostPageComponent.new(post: @post, current_user: current_user)
      end
      format.turbo_stream
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
    render Pages::NewPostPageComponent.new(post: @post)
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

  def applauds
    applauded = current_user.liked?(@post)
    @component = Organisms::ApplaudPostComponent.new(post: @post, applauded: applauded, applauded_count: @post.get_likes.size)
    respond_to do |format|
      format.turbo_stream
    end
  end

  def applaud
    @post.vote_by voter: current_user, vote: vote_param if vote_param
    respond_to do |format|
      format.turbo_stream do
        redirect_to action: :applauds
      end
    end
  end

  private
   
    def vote_param
      return 'like' if params[:vote] == "1"
      'bad'
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
