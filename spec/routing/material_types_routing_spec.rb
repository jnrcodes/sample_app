require "spec_helper"

describe MaterialTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/material_types").should route_to("material_types#index")
    end

    it "routes to #new" do
      get("/material_types/new").should route_to("material_types#new")
    end

    it "routes to #show" do
      get("/material_types/1").should route_to("material_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/material_types/1/edit").should route_to("material_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/material_types").should route_to("material_types#create")
    end

    it "routes to #update" do
      put("/material_types/1").should route_to("material_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/material_types/1").should route_to("material_types#destroy", :id => "1")
    end

  end
end
