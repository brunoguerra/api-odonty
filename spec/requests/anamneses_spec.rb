require 'rails_helper'

RSpec.describe "Anamneses", type: :request do
  describe "GET /anamneses" do
    it "works! (now write some real specs)" do
      patient = FactoryBot.create :patient
      get patient_anamneses_path(patient)
      expect(response).to have_http_status(200)
    end
  end
end
