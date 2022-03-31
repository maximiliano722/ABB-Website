require 'rails_helper'

RSpec.describe "Memberships", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/membership/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /events" do
    it "returns http success" do
      get "/membership/events"
      expect(response).to have_http_status(:success)
    end
  end

end
