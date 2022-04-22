# frozen_string_literal: true

class Atoms::ButtonComponent < ViewComponent::Base
  def initialize(variant:, options: {})
    @variant = variant
    @options = options.merge(class: button_class)
  end

  def button_class
    'rounded-lg py-3 px-5 bg-blue-600 text-white block font-medium'
  end

end
