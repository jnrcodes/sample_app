require 'spec_helper'

describe "material_types/show" do
  before(:each) do
    @material_type = assign(:material_type, stub_model(MaterialType))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
