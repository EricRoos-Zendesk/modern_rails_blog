# frozen_string_literal: true

class Pages::EditPostPageComponent < ViewComponent::Base

  def initialize(post:)
    @post = post
  end

end
