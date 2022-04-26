# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'messages/edit', type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
                                  name: 'MyString',
                                  content: 'MyString'
                                ))
  end

  it 'renders the edit message form' do
    render

    assert_select 'form[action=?][method=?]', message_path(@message), 'post' do
      assert_select 'input[name=?]', 'message[name]'

      assert_select 'input[name=?]', 'message[content]'
    end
  end
end
