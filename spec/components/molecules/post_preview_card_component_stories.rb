class Molecules::PostPreviewCardComponentStories < ViewComponent::Storybook::Stories
  story :profile_card do
    constructor(
      post_date: Date.today,
      post_title: Faker::Company.bs,
      preview_content: Faker::Lorem.sentences(number: 3).join(" "),
      read_more_href: '#',
      author_name: Faker::Name.name,
      author_image_url: 'https://i.pravatar.cc/300',
      post_author_id: 1,
      author_detail_href: '#'
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
