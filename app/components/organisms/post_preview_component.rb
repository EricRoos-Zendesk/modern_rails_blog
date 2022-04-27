# frozen_string_literal: true

class Organisms::PostPreviewComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

  def init_preview_card(&block)
    Molecules::PostPreviewCardComponent.new(
      post_date: @post.posted_at&.to_date || 'N/A',
      post_title: @post.title,
      preview_content: "",
      read_more_href: url_for(@post),
      author_name: @post.user.email,
      author_image_url: Gravatar.src(@post.user.email),
      post_author_id: @post.user.id,
      author_detail_href: user_path(@post.user, format: :turbo_stream),
      &block)
  end

  def preview_length
    500
  end
end
