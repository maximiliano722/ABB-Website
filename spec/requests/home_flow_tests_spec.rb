require 'rails_helper'

RSpec.describe "HomeFlowTests", type: :request do
  describe "GET /home_flow_tests" do
    it "works! (now write some real specs)" do
      get home_flow_tests_index_path
      expect(response).to have_http_status(200)
    end
  end
end
