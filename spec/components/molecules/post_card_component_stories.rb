class Molecules::PostCardComponentStories < ViewComponent::Storybook::Stories
  story :profile_card do
    constructor(
      post_date: Date.today,
      post_title: Faker::Company.bs,
      post_content: Faker::Lorem.sentences(number: 3).join(" "),
      author_name: Faker::Name.name,
      author_image_url: 'https://en.gravatar.com/userimage/211132844/96462fd3129d42607451fb63e0612620.jpeg'
    ) do
      content_tag(:p) do
        Faker::Lorem.paragraphs(number: 1).first
      end
      content_tag(:p) do
        Faker::Lorem.paragraphs(number: 1).first
      end
    end
  end
end
