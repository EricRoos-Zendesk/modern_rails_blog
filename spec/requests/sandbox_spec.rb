require 'rails_helper'

RSpec.describe "Sandboxes", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/sandbox/show"
      expect(response).to have_http_status(:success)
    end
  end

end
