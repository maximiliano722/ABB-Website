require 'rails_helper'

RSpec.describe "HomePages", type: :request do
  describe "able to access the about page from home" do
    it "get pages from nav bar" do
      get page_index_url
      page.should have_link(page_about_url)
      page.should have_link(page_contact_url)
      page.should have_link(page_recruitment_url)
    end
  end
end
