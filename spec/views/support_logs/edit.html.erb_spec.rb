# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'support_logs/edit', type: :view do
  before(:each) do
    @support_log = assign(:support_log, SupportLog.create!(
                                          event_id: 1,
                                          sponsor_id: 1
                                        ))
  end

  it 'renders the edit support_log form' do
    render

    assert_select 'form[action=?][method=?]', support_log_path(@support_log), 'post' do
      assert_select 'input[name=?]', 'support_log[event_id]'

      assert_select 'input[name=?]', 'support_log[sponsor_id]'
    end
  end
end
