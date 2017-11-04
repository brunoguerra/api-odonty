require "rails_helper"

RSpec.describe ChairsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chairs").to route_to("chairs#index")
    end


    it "routes to #show" do
      expect(:get => "/chairs/1").to route_to("chairs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chairs").to route_to("chairs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chairs/1").to route_to("chairs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chairs/1").to route_to("chairs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chairs/1").to route_to("chairs#destroy", :id => "1")
    end

  end
end
