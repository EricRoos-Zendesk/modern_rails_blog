class Organisms::ApplaudPostComponentStories < ViewComponent::Storybook::Stories
  story :post do
    constructor(
      post: FactoryBot.build(:post),
      applauded: false
    )
  end
end
