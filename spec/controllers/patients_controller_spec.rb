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


  describe 'GET /patients/:id' do
    before { get :show, params: { id: patient_id} }

    context 'when the record exists' do
      it 'returns the patient' do
        expect(response.body).not_to be_empty
        expect(assigns(:patient).id).to eq(patient_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end   
  end

   # Test suite for POST /patients
   describe 'POST /patients' do
    # valid payload
    let(:additional_valid_attributes) { FactoryBot.attributes_for :additional }
    let(:address_valid_attributes) { FactoryBot.attributes_for :address }
    let(:person_valid_attributes) { FactoryBot.attributes_for :person }
    let(:valid_attributes) { FactoryBot.attributes_for :patient }
    

    context 'when the request is valid' do
      before { post :create, params: { 
          :patient => valid_attributes
            .merge({:person_attributes => person_valid_attributes.merge({:address_attributes => address_valid_attributes})}) 
            .merge({:additional_attributes => additional_valid_attributes })
        } 
      }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post :create, params: { 
        :patient => valid_attributes
          .merge({:person_attributes => person_valid_attributes.merge({:address_attributes => address_valid_attributes})}) 
          .merge({:additional_attributes => {} })
        } 
      }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

  # Test suite for PUT /todos/:id
  describe 'PUT /patients/:id' do
    # valid payload
    let(:patient) { create(:patient) }
    
    context 'when the record exists' do
      before { put :update, params: { :id => patient.id, 
          :patient => {
            id: patient.id, 
            observation: patient.observation, 
            responsable: patient.responsable, 
            responsable_cpf: patient.responsable_cpf,
            person_attributes: {
              id: patient.person.id,
              address_attributes: {
                id: patient.person.address.id
              }
            },
            additional_attributes: {
              id: patient.additional.id
            }
          }
        }
      }

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the request is invalid' do
      before { put :update, params: { :id => patient.id, 
          :patient => {
            id: patient.id, 
            observation: patient.observation, 
            responsable: patient.responsable, 
            responsable_cpf: ''
          }
        }
      }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

   # Test suite for DELETE /patients/:id
   describe 'DELETE /patients/:id' do
    let(:patient) { create(:patient) }

    before { delete :destroy, params: { id: patient.id } }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end

end
