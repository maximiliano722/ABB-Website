# frozen_string_literal: true

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

RSpec.describe '/applications', type: :request do
  # Application. As you add validations to Application, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Application.create! valid_attributes
      get applications_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      application = Application.create! valid_attributes
      get application_url(application)
      expect(response).to be_successful
    end
  end

  #describe 'GET /new' do
   # it 'renders a successful response' do
    #  get new_application_url
     # expect(response).to be_successful
    #end
  #end

  describe 'GET /edit' do
    it 'render a successful response' do
      application = Application.create! valid_attributes
      get edit_application_url(application)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      #it 'creates a new Application' do
       # expect do
        #  post applications_url, params: { application: valid_attributes }
        #end.to change(Application, :count).by(1)
      #end

      it 'redirects to the created application' do
        post applications_url, params: { application: valid_attributes }
        expect(response).to redirect_to(application_url(Application.last))
      end
    end

    context 'with invalid parameters' do
      #it 'does not create a new Application' do
       # expect do
        #  post applications_url, params: { application: invalid_attributes }
        #end.to change(Application, :count).by(0)
      #end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post applications_url, params: { application: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested application' do
        application = Application.create! valid_attributes
        patch application_url(application), params: { application: new_attributes }
        application.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the application' do
        application = Application.create! valid_attributes
        patch application_url(application), params: { application: new_attributes }
        application.reload
        expect(response).to redirect_to(application_url(application))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        application = Application.create! valid_attributes
        patch application_url(application), params: { application: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested application' do
      application = Application.create! valid_attributes
      expect do
        delete application_url(application)
      end.to change(Application, :count).by(-1)
    end

    it 'redirects to the applications list' do
      application = Application.create! valid_attributes
      delete application_url(application)
      expect(response).to redirect_to(applications_url)
    end
  end
end
