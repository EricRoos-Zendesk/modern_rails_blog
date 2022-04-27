class AuthorsController < ApplicationController
  def index
    authorize User, policy_class: AuthorPolicy
    @authors = User.joins(:posts).all.limit(10).group(:id)
  end
end
