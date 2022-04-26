# frozen_string_literal: true

class Atoms::ButtonComponent < ViewComponent::Base
  def initialize(variant: :primary, options: {})
    @variant = variant
    @options = options.merge(class: button_class)
  end

  def self.button_class
    "cursor-pointer rounded-lg py-3 px-5 bg-blue-600 text-white font-medium flex items-center justify-center hover:brightness-90 transition-all"
  end

  def button_class
    "#{self.class.button_class} #{width_class}"
  end

  private

  def width_class
    "w-max"
  end

end
