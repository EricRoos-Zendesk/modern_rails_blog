# frozen_string_literal: true

class Pages::PostsPageComponent < ViewComponent::Base
  include Heroicon::Engine.helpers

  def initialize(posts:)
    @posts = posts
  end

  def init_loading_preview
    Molecules::PostPreviewCardComponent.new(
      post_date: "Loading",
      post_title: "Loading",
      preview_content: "Loading",
      read_more_href: '#',
      author_name: "Loading",
      author_image_url: '',
      post_author_id: '',
      author_detail_href: '#'
    )
  end
end
