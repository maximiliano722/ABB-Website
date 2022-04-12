require 'rails_helper'

#Test 1: sign up new user

RSpec.describe 'Creating a user', type: :system do
    scenario 'valid inputs' do
        visit new_user_path
        fill_in 'Name', with: 'Khai Huyen Nguyen'
        fill_in 'Email', with: 'nguyenkhaihuyen1990@gmail.com'
        fill_in 'Password', with: '1234567'
        fill_in 'Confirm Password', with: '1234567'
        click_on 'Create Account'
        visit_users_path
        expect(page).to have_content('Khai Huyen Nguyen')
    end
end