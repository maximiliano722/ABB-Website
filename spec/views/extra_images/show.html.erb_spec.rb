require 'rails_helper'

RSpec.describe "extra_images/show", type: :view do
  before(:each) do
    @extra_image = assign(:extra_image, ExtraImage.create!(
      group: "Group",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Group/)
    expect(rendered).to match(/Description/)
  end
end
