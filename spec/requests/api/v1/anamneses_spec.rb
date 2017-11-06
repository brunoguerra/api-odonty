require 'rails_helper'

RSpec.describe "Api::V1::Anamneses", type: :request do
  describe "GET /anamneses" do
    it "works! (now write some real specs)" do
      FactoryBot.create :anamnesis_model
      patient = FactoryBot.create :patient
      get api_v1_patient_anamnesis_path(patient)
      expect(response).to have_http_status(200)
    end
  end
end
