require 'rails_helper'

RSpec.describe PatientsController, type: :controller do

  # initialize test data 
  let!(:patients) { create_list(:patient, 10) }
  let(:patient_id) { patients.first.id }

  # Test suite for GET /todos
  describe 'GET /patients' do
    # make HTTP get request before each example
    before { get :index }

    it 'returns patients' do
      # Note `json` is a custom helper to parse JSON responses
      expect(assigns(:patients)).not_to be_empty
      expect(assigns(:patients).size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end
