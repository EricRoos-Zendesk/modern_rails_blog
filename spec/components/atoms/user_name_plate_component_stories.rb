class Atoms::UserNamePlateComponentStories < ViewComponent::Storybook::Stories
  story :basic_name_place do
    constructor(image_url: Faker::Avatar.image, name: Faker::Name.name, detail_href: '#', detail_turbo_frame_id: 'foo')
  end
end
