# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'extra_images/index', type: :view do
  before(:each) do
    assign(:extra_images, [
             ExtraImage.create!(
               group: 'Group',
               description: 'Description'
             ),
             ExtraImage.create!(
               group: 'Group',
               description: 'Description'
             )
           ])
  end

  it 'renders a list of extra_images' do
    render
    assert_select 'tr>td', text: 'Group'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
  end
end
