require 'spec_helper'

describe "material_price_points/show" do
  before(:each) do
    @material_price_point = assign(:material_price_point, stub_model(MaterialPricePoint))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
