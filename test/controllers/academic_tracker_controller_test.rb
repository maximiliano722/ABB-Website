require 'test_helper'

class AcademicTrackerControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get academic_tracker_index_url
    assert_response :success
  end

  test 'should get show' do
    get academic_tracker_show_url
    assert_response :success
  end

  test 'should get edit' do
    get academic_tracker_edit_url
    assert_response :success
  end
end
