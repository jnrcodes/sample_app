require "spec_helper"

describe MaterialPricePointsController do
  describe "routing" do

    it "routes to #index" do
      get("/material_price_points").should route_to("material_price_points#index")
    end

    it "routes to #new" do
      get("/material_price_points/new").should route_to("material_price_points#new")
    end

    it "routes to #show" do
      get("/material_price_points/1").should route_to("material_price_points#show", :id => "1")
    end

    it "routes to #edit" do
      get("/material_price_points/1/edit").should route_to("material_price_points#edit", :id => "1")
    end

    it "routes to #create" do
      post("/material_price_points").should route_to("material_price_points#create")
    end

    it "routes to #update" do
      put("/material_price_points/1").should route_to("material_price_points#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/material_price_points/1").should route_to("material_price_points#destroy", :id => "1")
    end

  end
end
