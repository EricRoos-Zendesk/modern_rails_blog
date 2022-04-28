class Post < ApplicationRecord
  include FindByCache

  acts_as_votable cacheable_strategy: :update

  has_rich_text :content
  belongs_to :user

  validates_presence_of :title

end
