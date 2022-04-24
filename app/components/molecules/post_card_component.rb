# frozen_string_literal: true

class Molecules::PostCardComponent < ViewComponent::Base
  def initialize(post_date:, post_title:, post_content:, author_name:, author_image_url:)
    @post_date = post_date
    @post_title = post_title
    @author_name = author_name
    @author_image_url = author_image_url
    @post_content = post_content
  end
end
