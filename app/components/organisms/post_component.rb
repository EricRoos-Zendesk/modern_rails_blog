# frozen_string_literal: true

class Organisms::PostComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

  def init_card(&block)
    Molecules::PostCardComponent.new(
      post_date: @post.posted_at&.to_date,
      post_title: @post.title,
      post_content: @post.content,
      author_name: @post.user.email,
      author_image_url: Gravatar.src(@post.user.email),
      post_author_id: @post.user.id,
      author_detail_href: user_path(@post.user, format: :turbo_stream),
      &block
    )
  end
end
