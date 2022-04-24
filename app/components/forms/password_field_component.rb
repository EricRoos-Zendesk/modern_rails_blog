# frozen_string_literal: true

class Forms::PasswordFieldComponent < ViewComponent::Form::PasswordFieldComponent
  def html_class
    Forms::TextFieldComponent.base_html_class
  end
end
