# frozen_string_literal: true

class Organisms::PostPreviewComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end

  def init_preview_card(&block)
    Molecules::PostPreviewCardComponent.new(
      post_date: @post.created_at,
      post_title: @post.title,
      preview_content: "",
      read_more_href: '#',
      author_name: "N/A",
      author_image_url: 'https://i.pravatar.cc/300',
      &block)
  end
end
