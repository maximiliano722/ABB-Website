require 'rails_helper'

RSpec.describe "extra_images/edit", type: :view do
  before(:each) do
    @extra_image = assign(:extra_image, ExtraImage.create!(
      group: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit extra_image form" do
    render

    assert_select "form[action=?][method=?]", extra_image_path(@extra_image), "post" do

      assert_select "input[name=?]", "extra_image[group]"

      assert_select "input[name=?]", "extra_image[description]"
    end
  end
end
