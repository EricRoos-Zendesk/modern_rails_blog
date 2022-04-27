require 'rails_helper'

RSpec.describe PostPolicy, type: :policy do

  subject { described_class }
  let(:post) { FactoryBot.build(:post) }
  permissions :update?, :edit?, :destroy? do
    it { is_expected.to permit(post.user,post) }
    it { is_expected.to_not permit(FactoryBot.build(:user), post) }
  end

  permissions :create?, :show?, :applauds? do
    it { is_expected.to permit(post.user,post) }
    it { is_expected.to permit(FactoryBot.build(:user), post) }
  end

  permissions :applaud? do
    it { is_expected.to_not permit(post.user,post) }
    it { is_expected.to permit(FactoryBot.build(:user), post) }
  end

end
