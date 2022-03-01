require 'rails_helper'

RSpec.describe "attendance_logs/new", type: :view do
  before(:each) do
    assign(:attendance_log, AttendanceLog.new(
      event_id: 1,
      user_id: 1
    ))
  end

  it "renders new attendance_log form" do
    render

    assert_select "form[action=?][method=?]", attendance_logs_path, "post" do

      assert_select "input[name=?]", "attendance_log[event_id]"

      assert_select "input[name=?]", "attendance_log[user_id]"
    end
  end
end
