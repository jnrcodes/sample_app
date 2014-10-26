require 'spec_helper'

describe "material_types/index" do
  before(:each) do
    assign(:material_types, [
      stub_model(MaterialType),
      stub_model(MaterialType)
    ])
  end

  it "renders a list of material_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
