class Post < ApplicationRecord
  include FindByCache

  acts_as_votable cacheable_strategy: :update_columns

  has_rich_text :content
  belongs_to :user, touch: true

  validates_presence_of :title

  def update_cached_votes(vote_scope = nil)
    super
    touch
  end

end
