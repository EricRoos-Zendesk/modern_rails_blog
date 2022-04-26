# frozen_string_literal: true

class Forms::SubmitComponent < ViewComponent::Form::SubmitComponent
  def initialize(form, value, options = {})
    super(form, nil, options.merge(class: html_class))
  end

  def html_class
    Atoms::ButtonComponent.button_class
  end
end
