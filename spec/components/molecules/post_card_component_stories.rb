class Molecules::PostCardComponentStories < ViewComponent::Storybook::Stories
  story :profile_card do
    constructor(
      post_date: Date.today,
      post_title: Faker::Company.bs,
      post_content: Faker::Lorem.sentences(number: 3).join(" "),
      author_name: Faker::Name.name,
      author_image_url: 'https://en.gravatar.com/userimage/211132844/96462fd3129d42607451fb63e0612620.jpeg',
      post_author_id: 1,
      author_detail_href: '#'
    ) do
      content_tag(:div, class: 'mt-2') do
        "Additional content can be added via the block"
      end
    end
  end
end
