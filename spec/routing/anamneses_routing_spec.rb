require "rails_helper"

RSpec.describe AnamnesesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/anamneses").to route_to("anamneses#index")
    end


    it "routes to #show" do
      expect(:get => "/anamneses/1").to route_to("anamneses#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/anamneses").to route_to("anamneses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/anamneses/1").to route_to("anamneses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/anamneses/1").to route_to("anamneses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/anamneses/1").to route_to("anamneses#destroy", :id => "1")
    end

  end
end
