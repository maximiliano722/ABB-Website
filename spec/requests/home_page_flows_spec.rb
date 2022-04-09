require 'rails_helper'

RSpec.describe "HomePageFlows", type: :request do
  describe "GET our teams page from index" do
    it "gets the our teams page from the index page" do
      get root_path
      expect(page).to have_link('Our Team', href: root_path, count: 1)
    end
  end
end
