require 'rails_helper'

RSpec.describe "support_logs/show", type: :view do
  before(:each) do
    @support_log = assign(:support_log, SupportLog.create!(
      event_id: 2,
      sponsor_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end