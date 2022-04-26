# frozen_string_literal: true

class Atoms::LinkComponent < ViewComponent::Base
  def initialize(variant: :text, path: '#', options: {})
    @variant = variant
    @path = path
    @options = options
  end

  def html_class
    return button_variant_html_class if @variant&.to_sym == :button
    text_variant_html_class
  end

  def link_options
    @options.merge(class: "#{html_class} #{@options[:class]}")
  end

  private

  def button_variant_html_class
    Atoms::ButtonComponent.new.button_class
  end

  def text_variant_html_class
    'text-blue-500'
  end

end
