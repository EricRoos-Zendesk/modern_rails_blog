class Atoms::LinkComponentStories < ViewComponent::Storybook::Stories
  story :text_link do
    constructor(variant: :primary, path: '#') do
      "Click Me"
    end
  end
  story :big_text_link do
    constructor(variant: :primary, path: '#', options: { class: 'text-2xl text-slate-600 hover:underline' }) do
      "Click Me"
    end
  end

  story :button_link do
    constructor(variant: :button, path: '#') do
      "Click Me"
    end
  end
end
