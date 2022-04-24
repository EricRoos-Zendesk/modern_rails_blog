# frozen_string_literal: true

class Forms::TextFieldComponent < ViewComponent::Form::TextFieldComponent
  def self.base_html_class
    "block shadow rounded-md border border-gray-200 outline-none px-3 py-2 mt-2 w-full"
  end

  def html_class
    self.class.base_html_class
  end
end
