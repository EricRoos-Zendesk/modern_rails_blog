class Post < ApplicationRecord
  acts_as_votable

  has_rich_text :content
  belongs_to :user

  after_commit :update_cached_updated_at

  def self.updated_at_for(post_id)
    Rails.cache.fetch [:post, post_id, :updated_at] do
      Post.find(post_id).updated_at
    end
  end

  def update_cached_updated_at
    Rails.cache.write [:post, id, :updated_at], updated_at
  end
end
