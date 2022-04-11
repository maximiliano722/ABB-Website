require 'rails_helper'

RSpec.describe "HomePageFlows", type: :request do
  describe "GET our teams page from index" do
    it "gets the our teams page from the index page" do
      get root_path
      expect(page).to have_link('Our Team', href= "/our_team" , count: 1)
    end
  end

  describe "Submiting the contact form" do
    #Since form is not a entity(check for button)
    it "tests for a submit button on the home page" do
      get root_path
      click_on "Submit"
    end
  end

end
