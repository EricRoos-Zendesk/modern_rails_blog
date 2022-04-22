class Atoms::ButtonComponentStories < ViewComponent::Storybook::Stories
  story :primary_button do
    constructor(variant: :primary, options: { id: 'foo'} ) do
      "Hello World!"
    end
  end
end
