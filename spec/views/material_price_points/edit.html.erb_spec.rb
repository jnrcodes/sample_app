require 'spec_helper'

describe "material_price_points/edit" do
  before(:each) do
    @material_price_point = assign(:material_price_point, stub_model(MaterialPricePoint))
  end

  it "renders the edit material_price_point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", material_price_point_path(@material_price_point), "post" do
    end
  end
end
