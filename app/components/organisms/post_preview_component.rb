# frozen_string_literal: true

class Organisms::PostPreviewComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

  def init_preview_card(&block)
    Molecules::PostPreviewCardComponent.new(
      post_date: @post.created_at.to_date,
      post_title: @post.title,
      preview_content: "",
      read_more_href: url_for(@post),
      author_name: "N/A",
      author_image_url: "https://en.gravatar.com/userimage/211132844/96462fd3129d42607451fb63e0612620.jpeg",
      &block)
  end

  def preview_length
    500
  end
end
