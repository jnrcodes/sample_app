require 'spec_helper'

describe "material_types/new" do
  before(:each) do
    assign(:material_type, stub_model(MaterialType).as_new_record)
  end

  it "renders new material_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", material_types_path, "post" do
    end
  end
end
