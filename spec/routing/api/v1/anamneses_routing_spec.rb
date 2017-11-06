require "rails_helper"

RSpec.describe Api::V1::AnamnesesController, type: :routing do

  describe "routing" do

    it "routes to #show" do
      expect(:get => "api/v1/patients/1/anamnesis").to route_to("api/v1/anamneses#show", :patient_id => "1")
    end


    it "routes to #create" do
      expect(:post => "api/v1/patients/1/anamnesis").to route_to("api/v1/anamneses#create", :patient_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "api/v1/patients/1/anamnesis").to route_to("api/v1/anamneses#update", :patient_id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "api/v1/patients/1/anamnesis").to route_to("api/v1/anamneses#update", :patient_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "api/v1/patients/1/anamnesis").to route_to("api/v1/anamneses#destroy", :patient_id => "1")
    end

  end
end
