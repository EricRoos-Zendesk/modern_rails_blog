# frozen_string_literal: true

class Atoms::UserNamePlateComponent < ViewComponent::Base
  def initialize(image_url:, name:, detail_href:, detail_turbo_frame_id:)
    @image_url = image_url
    @name = name
    @detail_href = detail_href
    @detail_turbo_frame_id = detail_turbo_frame_id
  end
end
