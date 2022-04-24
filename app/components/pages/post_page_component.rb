# frozen_string_literal: true

class Pages::PostPageComponent < ViewComponent::Base
  def initialize(post: )
    @post = post
  end

end
