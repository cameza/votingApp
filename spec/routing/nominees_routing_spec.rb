require "spec_helper"

describe NomineesController do
  describe "routing" do

    it "routes to #index" do
      get("/nominees").should route_to("nominees#index")
    end

    it "routes to #new" do
      get("/nominees/new").should route_to("nominees#new")
    end

    it "routes to #show" do
      get("/nominees/1").should route_to("nominees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nominees/1/edit").should route_to("nominees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nominees").should route_to("nominees#create")
    end

    it "routes to #update" do
      put("/nominees/1").should route_to("nominees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nominees/1").should route_to("nominees#destroy", :id => "1")
    end

  end
end
