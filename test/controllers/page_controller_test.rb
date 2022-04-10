# frozen_string_literal: true

require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get page_index_url
    assert_response :success
  end

  test 'should get about' do
    get page_about_url
    assert_response :success
  end

  test 'should get contact' do
    get page_contact_url
    assert_response :success
  end

  test 'should get recruitment' do
    get page_recruitment_url
    assert_response :success
  end
end
