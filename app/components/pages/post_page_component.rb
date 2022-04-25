# frozen_string_literal: true

class Pages::PostPageComponent < ViewComponent::Base
  def initialize(post:, current_user: nil)
    @post = post
    @current_user = current_user
  end

end
