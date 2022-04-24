class Templates::TwoColumnComponentStories < ViewComponent::Storybook::Stories
  story :two_columns do
    constructor
    main_content do
        "main content"
    end
    side_content do
      "side_content"
    end
  end
end
