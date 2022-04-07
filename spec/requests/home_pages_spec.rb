require 'rails_helper'

RSpec.describe "HomePages", type: :request do
  describe "able to access the about page from home" do
    it "get pages from nav bar" do
      get root_path
        page.should have_link(href="/index")
        page.should have_link(href="/about")
        page.should have_link(href="/recruitment")
      end
    end
  end
end  
  
