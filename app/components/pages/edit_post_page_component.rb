# frozen_string_literal: true

class Pages::EditPostPageComponent < ViewComponent::Base
  include Heroicon::Engine.helpers

  def initialize(post:)
    @post = post
  end

end
