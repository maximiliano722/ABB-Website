require 'rails_helper'

RSpec.describe "applications/index", type: :view do
  before(:each) do
    assign(:applications, [
      Application.create!(
        name: "Name",
        email: "Email",
        status: "Status"
      ),
      Application.create!(
        name: "Name",
        email: "Email",
        status: "Status"
      )
    ])
  end

  it "renders a list of applications" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
