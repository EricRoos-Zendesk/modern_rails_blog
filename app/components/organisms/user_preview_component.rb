# frozen_string_literal: true

class Organisms::UserPreviewComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

end
