require 'rails_helper'

RSpec.describe "attendance_logs/show", type: :view do
  before(:each) do
    @attendance_log = assign(:attendance_log, AttendanceLog.create!(
      event_id: 2,
      user_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
