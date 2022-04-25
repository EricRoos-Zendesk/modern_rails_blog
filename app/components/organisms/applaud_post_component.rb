# frozen_string_literal: true

class Organisms::ApplaudPostComponent < ViewComponent::Base
  include Heroicon::Engine.helpers

  def initialize(post:, enabled: false, applauded:, applauded_count: 0 )
    @post = post
    @enabled = enabled
    @applauded = applauded
    @applauded_count = applauded_count
  end

end
