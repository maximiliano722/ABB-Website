require 'rails_helper'

RSpec.describe "sponsors/new", type: :view do
  before(:each) do
    assign(:sponsor, Sponsor.new(
      event_id: 1,
      sponsor_name: "MyString",
      sponsor_type: "MyString"
    ))
  end

  it "renders new sponsor form" do
    render

    assert_select "form[action=?][method=?]", sponsors_path, "post" do

      assert_select "input[name=?]", "sponsor[event_id]"

      assert_select "input[name=?]", "sponsor[sponsor_name]"

      assert_select "input[name=?]", "sponsor[sponsor_type]"
    end
  end
end
