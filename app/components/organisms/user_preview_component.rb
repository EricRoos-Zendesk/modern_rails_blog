# frozen_string_literal: true

class Organisms::UserPreviewComponent < ViewComponent::Base
  include Heroicon::Engine.helpers

  def initialize(user:)
    @user = user
  end

end
