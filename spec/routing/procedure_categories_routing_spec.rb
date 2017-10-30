require "rails_helper"

RSpec.describe ProcedureCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/procedure_categories").to route_to("procedure_categories#index")
    end


    it "routes to #show" do
      expect(:get => "/procedure_categories/1").to route_to("procedure_categories#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/procedure_categories").to route_to("procedure_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/procedure_categories/1").to route_to("procedure_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/procedure_categories/1").to route_to("procedure_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/procedure_categories/1").to route_to("procedure_categories#destroy", :id => "1")
    end

  end
end
