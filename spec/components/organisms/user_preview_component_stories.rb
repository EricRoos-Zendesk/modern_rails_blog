class Organisms::UserPreviewComponentStories < ViewComponent::Storybook::Stories
  story :user_preview do
    constructor(
      user: FactoryBot.build(:user)
    )
  end
end
