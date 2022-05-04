class User < ApplicationRecord
  include FindByCache
  rolify

  after_create :assign_default_role

  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts

  def received_applauds_count
    posts.sum(:cached_votes_up)
  end

  def assign_default_role
    self.add_role(Role::READER) if self.roles.blank?
  end
end
