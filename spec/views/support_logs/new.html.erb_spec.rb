require 'rails_helper'

RSpec.describe "support_logs/new", type: :view do
  before(:each) do
    assign(:support_log, SupportLog.new(
      event_id: 1,
      sponsor_id: 1
    ))
  end

  it "renders new support_log form" do
    render

    assert_select "form[action=?][method=?]", support_logs_path, "post" do

      assert_select "input[name=?]", "support_log[event_id]"

      assert_select "input[name=?]", "support_log[sponsor_id]"
    end
  end
end
