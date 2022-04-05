 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/sponsors", type: :request do
  
  # Sponsor. As you add validations to Sponsor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Sponsor.create! valid_attributes
      get sponsors_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      sponsor = Sponsor.create! valid_attributes
      get sponsor_url(sponsor)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_sponsor_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      sponsor = Sponsor.create! valid_attributes
      get edit_sponsor_url(sponsor)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Sponsor" do
        expect {
          post sponsors_url, params: { sponsor: valid_attributes }
        }.to change(Sponsor, :count).by(1)
      end

      it "redirects to the created sponsor" do
        post sponsors_url, params: { sponsor: valid_attributes }
        expect(response).to redirect_to(sponsor_url(Sponsor.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Sponsor" do
        expect {
          post sponsors_url, params: { sponsor: invalid_attributes }
        }.to change(Sponsor, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post sponsors_url, params: { sponsor: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested sponsor" do
        sponsor = Sponsor.create! valid_attributes
        patch sponsor_url(sponsor), params: { sponsor: new_attributes }
        sponsor.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the sponsor" do
        sponsor = Sponsor.create! valid_attributes
        patch sponsor_url(sponsor), params: { sponsor: new_attributes }
        sponsor.reload
        expect(response).to redirect_to(sponsor_url(sponsor))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        sponsor = Sponsor.create! valid_attributes
        patch sponsor_url(sponsor), params: { sponsor: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested sponsor" do
      sponsor = Sponsor.create! valid_attributes
      expect {
        delete sponsor_url(sponsor)
      }.to change(Sponsor, :count).by(-1)
    end

    it "redirects to the sponsors list" do
      sponsor = Sponsor.create! valid_attributes
      delete sponsor_url(sponsor)
      expect(response).to redirect_to(sponsors_url)
    end
  end
end
