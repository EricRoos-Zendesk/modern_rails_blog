# frozen_string_literal: true

class Pages::EditPostPageComponent < ViewComponent::Base
  include Heroicon::Engine.helpers

  def initialize(post:, current_user: nil)
    @post = post
    @current_user = current_user
  end

end
