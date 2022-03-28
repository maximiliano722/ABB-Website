require 'rails_helper'

RSpec.describe "UserFlows", type: :request do
  describe "Navigation should be available" do
    it "should show the navigation on the home page" do
      visit root_path
      page.should have_link('Home')
      page.should have_link('About')
      page.should have_link('Recruitment')
    end
  end
end
