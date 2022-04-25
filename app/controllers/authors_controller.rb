class AuthorsController < ApplicationController
  def index
    @authors = User.joins(:posts).all.limit(10).group(:id)
  end
end
