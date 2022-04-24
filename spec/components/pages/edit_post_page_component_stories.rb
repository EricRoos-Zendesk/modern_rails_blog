class Pages::EditPostPageComponentStories < ViewComponent::Storybook::Stories
  story :post_page do
    constructor(post: FactoryBot.build(:post))
  end
end
