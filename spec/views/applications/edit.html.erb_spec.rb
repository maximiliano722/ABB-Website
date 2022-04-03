require 'rails_helper'

RSpec.describe "applications/edit", type: :view do
  before(:each) do
    @application = assign(:application, Application.create!(
      name: "MyString",
      email: "MyString",
      status: "MyString"
    ))
  end

  it "renders the edit application form" do
    render

    assert_select "form[action=?][method=?]", application_path(@application), "post" do

      assert_select "input[name=?]", "application[name]"

      assert_select "input[name=?]", "application[email]"

      assert_select "input[name=?]", "application[status]"
    end
  end
end
