# frozen_string_literal: true

class Molecules::PostPreviewCardComponent < ViewComponent::Base
  def initialize(post_date:, post_title:, preview_content:, read_more_href:, author_name:, author_image_url:)
    @post_date = post_date
    @post_title = post_title
    @preview_content = preview_content
    @read_more_href = read_more_href
    @author_name = author_name
    @author_image_url = author_image_url
  end
end
