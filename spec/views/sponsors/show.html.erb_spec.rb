require 'rails_helper'

RSpec.describe "sponsors/show", type: :view do
  before(:each) do
    @sponsor = assign(:sponsor, Sponsor.create!(
      event_id: 2,
      sponsor_name: "Sponsor Name",
      sponsor_type: "Sponsor Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Sponsor Name/)
    expect(rendered).to match(/Sponsor Type/)
  end
end
