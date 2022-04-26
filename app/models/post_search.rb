class PostSearch
  include ActiveModel::Model

  attr_accessor :order, :order_by, :posted_at_after, :posted_by, :limit
  
  def hits
    init_search
    attach_order_clause
    attach_posted_bounds_clause
    attach_posted_by  
    attach_limit
    @search
  end

  private

  def init_search
    @search = Post.all
  end

  def attach_order_clause
    order_hash = {}
    order_hash[order_by || :posted_at] = order || :desc
    @search = @search.order(order_hash)
  end

  def attach_posted_bounds_clause
    @search = @search.where("posted_at >= ?", posted_at_after) if posted_at_after
  end

  def attach_posted_by
    @search = @search.where(user_id: posted_by.id) if posted_by
  end

  def attach_limit
    @search = @search.limit(limit || 10)
  end
end
