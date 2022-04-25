# frozen_string_literal: true

class Atoms::UserNamePlateComponent < ViewComponent::Base
  def initialize(image_url:, name:)
    @image_url = image_url
    @name = name
  end
end
