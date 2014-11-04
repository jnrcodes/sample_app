require 'spec_helper'

describe "materials/new" do
  before(:each) do
    assign(:material, stub_model(Material).as_new_record)
  end

  it "renders new material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", materials_path, "post" do
    end
  end
end
