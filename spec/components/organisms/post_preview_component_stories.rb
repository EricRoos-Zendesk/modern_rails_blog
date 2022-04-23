class Organisms::PostPreviewComponentStories < ViewComponent::Storybook::Stories
  story :profile_card do
    constructor(
      post: FactoryBot.build(:post)
    )
  end
end
