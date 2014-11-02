require 'spec_helper'

describe "material_types/edit" do
  before(:each) do
    @material_type = assign(:material_type, stub_model(MaterialType))
  end

  it "renders the edit material_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", material_type_path(@material_type), "post" do
    end
  end
end
