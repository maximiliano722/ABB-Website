require 'rails_helper'

RSpec.describe "HomePageFlows", type: :request do
  describe "GET /home_page_flows" do
    it "works! (now write some real specs)" do
      get home_page_flows_path
      expect(response).to have_http_status(200)
    end
  end
end
