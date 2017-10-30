require 'rails_helper'

RSpec.describe "ProcedureCategories", type: :request do
  describe "GET /procedure_categories" do
    it "works! (now write some real specs)" do
      get procedure_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
