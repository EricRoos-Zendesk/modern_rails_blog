# frozen_string_literal: true

class Pages::PostsPageComponent < ViewComponent::Base
  def initialize(posts:)
    @posts = posts
  end

end
