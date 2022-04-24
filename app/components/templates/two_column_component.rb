# frozen_string_literal: true

class Templates::TwoColumnComponent < ViewComponent::Base
  renders_one :main_content
  renders_one :side_content
end
