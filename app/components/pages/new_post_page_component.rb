# frozen_string_literal: true

class Pages::NewPostPageComponent < ViewComponent::Base
  include Heroicon::Engine.helpers

  def initialize(post: )
    @post = post
  end

end
