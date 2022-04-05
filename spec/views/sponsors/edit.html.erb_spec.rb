require 'rails_helper'

RSpec.describe "sponsors/edit", type: :view do
  before(:each) do
    @sponsor = assign(:sponsor, Sponsor.create!(
      event_id: 1,
      sponsor_name: "MyString",
      sponsor_type: "MyString"
    ))
  end

  it "renders the edit sponsor form" do
    render

    assert_select "form[action=?][method=?]", sponsor_path(@sponsor), "post" do

      assert_select "input[name=?]", "sponsor[event_id]"

      assert_select "input[name=?]", "sponsor[sponsor_name]"

      assert_select "input[name=?]", "sponsor[sponsor_type]"
    end
  end
end
