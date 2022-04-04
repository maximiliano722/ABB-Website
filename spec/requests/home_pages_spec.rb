require 'rails_helper'

RSpec.describe "HomePages", type: :request do
  describe "GET /home_pages" do
    it "works! (now write some real specs)" do
      get home_pages_path
      expect(response).to have_http_status(200)
    end
  end
end
