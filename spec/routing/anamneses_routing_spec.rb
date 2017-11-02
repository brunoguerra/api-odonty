require "rails_helper"

RSpec.describe AnamnesesController, type: :routing do
  describe "routing" do

    it "routes to #show" do
      expect(:get => "patients/1/anamnesis").to route_to("anamneses#show", :patient_id => "1")
    end


    it "routes to #create" do
      expect(:post => "patients/1/anamnesis").to route_to("anamneses#create", :patient_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "patients/1/anamnesis").to route_to("anamneses#update", :patient_id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "patients/1/anamnesis").to route_to("anamneses#update", :patient_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "patients/1/anamnesis").to route_to("anamneses#destroy", :patient_id => "1")
    end

  end
end
