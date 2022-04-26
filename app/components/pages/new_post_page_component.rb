# frozen_string_literal: true

class Pages::NewPostPageComponent < ViewComponent::Base
  def initialize(post: )
    @post = post
  end

end
