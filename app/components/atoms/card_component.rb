# frozen_string_literal: true

class Atoms::CardComponent < ViewComponent::Base

  def initialize(html_class: '')
    @html_class = html_class
  end

end
