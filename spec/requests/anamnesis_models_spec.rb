require 'rails_helper'

RSpec.describe "AnamnesisModels", type: :request do
  describe "GET /anamnesis_models" do
    it "works! (now write some real specs)" do
      get anamnesis_models_path
      expect(response).to have_http_status(200)
    end
  end
end
