# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'extra_images/new', type: :view do
  before(:each) do
    assign(:extra_image, ExtraImage.new(
                           group: 'MyString',
                           description: 'MyString'
                         ))
  end

  it 'renders new extra_image form' do
    render

    assert_select 'form[action=?][method=?]', extra_images_path, 'post' do
      assert_select 'input[name=?]', 'extra_image[group]'

      assert_select 'input[name=?]', 'extra_image[description]'
    end
  end
end
