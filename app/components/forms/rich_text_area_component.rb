# frozen_string_literal: true

class Forms::RichTextAreaComponent < ViewComponent::Form::RichTextAreaComponent
  def html_class
    Forms::TextFieldComponent.base_html_class + " bg-white"
  end
end
