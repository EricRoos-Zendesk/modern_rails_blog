require 'rails_helper'

RSpec.describe AuthorPolicy, type: :policy do
  let(:user) { User.new }

  subject { described_class }

  permissions :index? do
    it { is_expected.to permit(user, FactoryBot.create(:user)) }
  end

end
