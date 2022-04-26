# frozen_string_literal: true

require 'rails_helper'

# Test 1: sign up new user with invalid password

RSpec.describe 'Creating a user', type: :feature do
  scenario 'valid inputs' do
    visit new_user_path
    fill_in 'Name', with: 'Khai Huyen Nguyen'
    fill_in 'Email', with: 'nguyenkhaihuyen1990@gmail.com'
    click_on 'Create Account'
    visit users_path
    expect(page).to have_content('You need to sign in')
  end
end
# TEst 2: update a feature

RSpec.describe('Authentication', type: :feature) do
  before do
    Rails.application.env_config['devise.mapping'] = Devise.mappings[:admin]
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_user]
    Admin.create!(email: 'khaihuyennguyen90@tamu.edu', full_name: 'Khai Huyen Nguyen', uid: '728002055', avatar_url: 'https://lh3.googleusent.com/url/photo.jpg')
    User.create!(name: 'Hanbit',
                 email: 'hk24536@tamu.edu',
                 password: '1234567',
                 password_confirmation: '1234567',
                 is_admin: true)
  end

  it 'When a user try to see all users website should take them back to log in page' do
    visit users_path
    # verify redirection & the page content to be the sign in page
    expect(page).to(have_current_path(new_admin_session_path))
    expect(page).to(have_content('Login to the Admin Dashboard'))
    expect(page).to(have_content('You need to sign in or sign up before continuing'))
  end
end
