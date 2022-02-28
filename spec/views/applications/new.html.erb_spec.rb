require 'rails_helper'

RSpec.describe "applications/new", type: :view do
  before(:each) do
    assign(:application, Application.new(
      name: "MyString",
      email: "MyString",
      status: "MyString"
    ))
  end

  it "renders new application form" do
    render

    assert_select "form[action=?][method=?]", applications_path, "post" do

      assert_select "input[name=?]", "application[name]"

      assert_select "input[name=?]", "application[email]"

      assert_select "input[name=?]", "application[status]"
    end
  end
end
