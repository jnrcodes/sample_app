require 'spec_helper'

describe "material_price_points/new" do
  before(:each) do
    assign(:material_price_point, stub_model(MaterialPricePoint).as_new_record)
  end

  it "renders new material_price_point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", material_price_points_path, "post" do
    end
  end
end
