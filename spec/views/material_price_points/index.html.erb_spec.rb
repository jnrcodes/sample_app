require 'spec_helper'

describe "material_price_points/index" do
  before(:each) do
    assign(:material_price_points, [
      stub_model(MaterialPricePoint),
      stub_model(MaterialPricePoint)
    ])
  end

  it "renders a list of material_price_points" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
