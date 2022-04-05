require "rails_helper"

RSpec.describe ExtraImagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/extra_images").to route_to("extra_images#index")
    end

    it "routes to #new" do
      expect(get: "/extra_images/new").to route_to("extra_images#new")
    end

    it "routes to #show" do
      expect(get: "/extra_images/1").to route_to("extra_images#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/extra_images/1/edit").to route_to("extra_images#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/extra_images").to route_to("extra_images#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/extra_images/1").to route_to("extra_images#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/extra_images/1").to route_to("extra_images#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/extra_images/1").to route_to("extra_images#destroy", id: "1")
    end
  end
end
