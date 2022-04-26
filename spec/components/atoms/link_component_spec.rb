# frozen_string_literal: true

require "rails_helper"

RSpec.describe Atoms::LinkComponent, type: :component do
  let(:variant) { :text }
  let(:path) { '#' }
  let(:link_text) { 'Foo' }

  subject do
    rendered_component
  end

  shared_examples "atoms::link" do
    let(:options) do
      {
        id: 'foo-id'
      }
    end
    let(:expected_html_class_fn) do
      "#{variant}_variant_html_class"
    end
    before do
      component = described_class.new(
        path: path,
        variant: variant,
        options: options
      )
      expect(component).to receive(expected_html_class_fn) if variant
      render_inline(component) do
        content_tag(:div, class: 'text-red-500') do
          link_text 
        end
      end
    end

    it { is_expected.to have_selector("a##{options[:id]}[href='#{path}']", text: link_text) }
    it { is_expected.to have_selector("a##{options[:id]} div[class='text-red-500']", text: link_text) }
  end

  context 'when all params are as expected' do
    let(:variant) { :button }
    it_behaves_like "atoms::link"
  end

  context 'when the variant or link_text are nil' do
    let(:variant) { nil }
    let(:link_text) { nil }
    it_behaves_like "atoms::link"
  end

  context 'when the variant or link_text are nil' do
    let(:variant) { :button }
    let(:link_text) { nil }
    it_behaves_like "atoms::link"
  end
end
