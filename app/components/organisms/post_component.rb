# frozen_string_literal: true

class Organisms::PostComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

  def init_card
    Molecules::PostCardComponent.new(
      post_date: @post.posted_at.to_date,
      post_title: @post.title,
      post_content: @post.content,
      author_name: "N/A",
      author_image_url: "https://en.gravatar.com/userimage/211132844/96462fd3129d42607451fb63e0612620.jpeg",
    )
  end
end
