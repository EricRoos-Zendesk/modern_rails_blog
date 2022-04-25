# frozen_string_literal: true

class Organisms::UserListCardComponent < ViewComponent::Base
  def initialize(users:)
    @users = users
  end

end
