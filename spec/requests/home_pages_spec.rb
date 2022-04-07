require 'rails_helper'

RSpec.describe "HomePages", type: :request do
  describe "able to access the index page from home" do
    it "get index page from nav bar" do
      visit root_path
      page.should have_link(href="/index")

    end
  end

  describe "able to access the about page from home" do
    it "get about pages from nav bar" do
      visit root_path
      page.should have_link(href="/about")
    end
  end
end
