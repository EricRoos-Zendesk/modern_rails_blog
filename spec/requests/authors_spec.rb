require 'rails_helper'

RSpec.describe "Authors", type: :request do
  before do
    sign_in FactoryBot.create(:user)
  end
  describe "GET /index" do
    it "returns http success" do
      get "/authors.turbo_stream"
      expect(response).to have_http_status(:success)
    end
  end

end
