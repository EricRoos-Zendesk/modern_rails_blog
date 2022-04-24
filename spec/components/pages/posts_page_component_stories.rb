class Pages::PostsPageComponentStories < ViewComponent::Storybook::Stories
  story :empty_posts_page do
    constructor(posts: [])
  end
end
