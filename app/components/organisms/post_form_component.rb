# frozen_string_literal: true

class Organisms::PostFormComponent < ViewComponent::Base
  include Rails.application.routes.mounted_helpers #for action text helper 
  include ActionText::TagHelper

  def initialize(post:)
    @post = post
  end

end
