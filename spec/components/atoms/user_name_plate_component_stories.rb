class Atoms::UserNamePlateComponentStories < ViewComponent::Storybook::Stories
  story :basic_name_place do
    constructor(image_url: Faker::Avatar.image, name: Faker::Name.name)
  end
end
