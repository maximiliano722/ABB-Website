require 'rails_helper'

RSpec.describe "sponsors/index", type: :view do
  before(:each) do
    assign(:sponsors, [
      Sponsor.create!(
        event_id: 2,
        sponsor_name: "Sponsor Name",
        sponsor_type: "Sponsor Type"
      ),
      Sponsor.create!(
        event_id: 2,
        sponsor_name: "Sponsor Name",
        sponsor_type: "Sponsor Type"
      )
    ])
  end

  it "renders a list of sponsors" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Sponsor Name".to_s, count: 2
    assert_select "tr>td", text: "Sponsor Type".to_s, count: 2
  end
end
