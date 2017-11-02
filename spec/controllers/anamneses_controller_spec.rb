require 'rails_helper'

RSpec.describe AnamnesesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Anamnesis. As you add validations to Anamnesis, be sure to
  # adjust the attributes here as well.
  let(:valid_object) { FactoryBot.create(:anamnesis)}
  let(:valid_attributes) { valid_object.attributes}
  let(:invalid_attributes) { { anamnesis_model_id: ""} }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AnamnesesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #show" do
    it "returns a success response" do
      anamnesis = Anamnesis.create! FactoryBot.build(:anamnesis).attributes
      get :show, params: {patient_id: anamnesis.patient.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      
      it "creates a new Anamnesis" do
        anamnesis = FactoryBot.build(:anamnesis)
        expect {
          post :create, params: {patient_id: anamnesis.patient.to_param, anamnesis: anamnesis.attributes}, session: valid_session
        }.to change(Anamnesis, :count).by(1)
      end

      it "renders a JSON response with the new anamnesis" do
        anamnesis = FactoryBot.build(:anamnesis)
        post :create, params: {patient_id: anamnesis.patient.to_param, anamnesis: anamnesis.attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(patient_anamnesis_url(anamnesis.patient))
      end
    end

    context "with invalid params" do
      
      it "renders a JSON response with errors for the new anamnesis" do
        anamnesis = FactoryBot.build(:anamnesis)
        post :create, params: {patient_id: anamnesis.patient.to_param,anamnesis: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { observation: "teste"} }

      it "updates the requested anamnesis" do
        put :update, params: {patient_id: valid_object.patient.to_param, anamnesis: new_attributes}, session: valid_session
        valid_object.reload
        expect(valid_object.observation).to eq(new_attributes[:observation])
      end

      it "renders a JSON response with the anamnesis" do
        put :update, params: {patient_id: valid_object.patient.to_param, anamnesis: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the anamnesis" do
        put :update, params: {patient_id: valid_object.patient.to_param, anamnesis: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested anamnesis" do
      anamnesis = Anamnesis.create! FactoryBot.build(:anamnesis).attributes
      expect {
        delete :destroy, params: {patient_id: anamnesis.patient.to_param}, session: valid_session
      }.to change(Anamnesis, :count).by(-1)
    end
  end

end
