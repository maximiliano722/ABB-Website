require 'rails_helper'

RSpec.describe "support_logs/index", type: :view do
  before(:each) do
    assign(:support_logs, [
      SupportLog.create!(
        event_id: 2,
        sponsor_id: 3
      ),
      SupportLog.create!(
        event_id: 2,
        sponsor_id: 3
      )
    ])
  end

  it "renders a list of support_logs" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end