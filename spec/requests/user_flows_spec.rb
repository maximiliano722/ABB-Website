require 'rails_helper'

RSpec.describe "UserFlows", type: :request do
  describe "GET /about" do
    it "Can get the about page from the home page" do
      get root_path
      assert_select "a", "About", 1
    end
  end
end
