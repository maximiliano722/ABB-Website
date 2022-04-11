# frozen_string_literal: true

# location: spec/feature/integration_spec.rb
require 'rails_helper'

#attendance log integration test
RSpec.describe 'Creating a attendance_log', type: :feature do
    scenario 'valid inputs for attendance log' do
      visit new_attendance_log_path
      fill_in 'Event', with: 1
      fill_in 'User', with: 1
      click_on 'Create Attendance log'
      visit attendance_logs_path
      expect(page).to have_content('1')
    end
end


#All log in functions test

