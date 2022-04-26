# frozen_string_literal: true

require "rails_helper"

RSpec.describe Templates::FixedCenterCardComponent, type: :component do
  before do
    render_inline(described_class.new) do |component|
      component.above_matter { "Above Matter" }
      "body"
    end
  end
  subject { rendered_component } 
  it { is_expected.to have_text 'Above Matter' }
  it { is_expected.to have_text 'body' }
end
