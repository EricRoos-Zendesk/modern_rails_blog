require 'rails_helper'

RSpec.describe PostPolicy, type: :policy do

  subject { described_class }
  let(:post) { FactoryBot.build(:post) }

  permissions :create? do
    it { is_expected.to permit(FactoryBot.create(:author)) }
    it { is_expected.to_not permit(nil) }
  end

  permissions :update?, :edit?, :destroy? do
    it { is_expected.to permit(post.user,post) }
    it { is_expected.to_not permit(FactoryBot.create(:user), post) }
    it { is_expected.to_not permit(nil, post) }
  end

  permissions :show?, :applauds?, :index? do
    it { is_expected.to permit(post.user,post) }
    it { is_expected.to permit(FactoryBot.create(:user), post) }
    it { is_expected.to permit(nil, post) }
  end

  permissions :applaud? do
    it { is_expected.to_not permit(post.user,post) }
    it { is_expected.to permit(FactoryBot.create(:user), post) }
    it { is_expected.to_not permit(nil,post) }
  end

end
