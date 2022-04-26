class Organisms::PostFormComponentStories < ViewComponent::Storybook::Stories
  story :post do
    constructor(
      post: FactoryBot.build(:post)
    )
  end
end
