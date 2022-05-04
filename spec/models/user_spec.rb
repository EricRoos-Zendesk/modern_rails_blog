require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'default roles' do
    let(:user) { FactoryBot.create(:user) }
    subject { user }

    it { is_expected.to have_role(:reader) }
    context 'with author role' do
      let(:user) { FactoryBot.create(:author) }
      it { is_expected.to have_role(:reader) }
      it { is_expected.to have_role(:author) }
    end

    context 'with moderator role' do
      let(:user) { FactoryBot.create(:moderator) }
      it { is_expected.to have_role(:reader) }
      it { is_expected.to have_role(:moderator) }
    end

    context 'with admin role' do
      let(:user) { FactoryBot.create(:admin) }
      it { is_expected.to have_role(:reader) }
      it { is_expected.to have_role(:admin) }
    end
  end
end
