class Organisms::UserListCardComponentStories < ViewComponent::Storybook::Stories
  story :user_list do
    constructor(
      users: FactoryBot.build_list(:user, 5)
    )
  end
end
