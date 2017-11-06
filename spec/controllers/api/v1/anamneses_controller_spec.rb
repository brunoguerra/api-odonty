require 'rails_helper'

RSpec.describe Api::V1::AnamnesesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Anamnesis. As you add validations to Anamnesis, be sure to
  # adjust the attributes here as well.
  let(:valid_object) { FactoryBot.build(:anamnesis)}
  let(:valid_answers_attributes) { 
    Array.new(valid_object.answers.size)  do |i| 
      valid_object.answers[i].attributes
    end  
  }
  let(:valid_attributes) { 
    valid_object.attributes.merge({
      "answers_attributes" => valid_answers_attributes
    })
  }
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
        expect {
          post :create, params: {patient_id: valid_object.patient.to_param, anamnesis: valid_attributes }, session: valid_session
        }.to change(Anamnesis, :count).by(1)
      end

      it "renders a JSON response with the new anamnesis" do
        
        valid_attributes["answers_attributes"].each_with_index do |answer, index|
          answer["description"] = index.to_s
          answer["auxiliar_text"] = index.to_s
        end
        
        post :create, params: {patient_id: valid_object.patient.to_param, anamnesis: valid_attributes}, session: valid_session
        
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(patient_anamnesis_url(valid_object.patient))
        anamnesis = Patient.find(valid_object.patient.id).anamnesis
        expect(anamnesis.answers.count).to eq(valid_attributes["answers_attributes"].count)
        anamnesis.answers.each_with_index do |answer, index|
          (answer.attributes.keys - ["id","created_at","updated_at","anamnesis_id", "question_id"]).each do |attr|
            expect(answer.attributes[attr]).to eq(valid_attributes["answers_attributes"][index][attr])  
          end
          expect(answer.description).to eq(valid_attributes["answers_attributes"][index]["description"])
          expect(answer.auxiliar_text).to eq(valid_attributes["answers_attributes"][index]["auxiliar_text"])
        end
      end
    end

    context "with invalid params" do
      
      it "renders a JSON response with errors for the new anamnesis" do
        post :create, params: {patient_id: valid_object.patient.to_param,anamnesis: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { observation: "teste"} }

      it "updates the requested anamnesis" do
        anamnesis = Anamnesis.create! valid_attributes
        new_valid_attributes = valid_attributes
        new_valid_answers_attributes = Array.new(anamnesis.answers.size)  do |i| 
          anamnesis.answers[i].attributes
        end
        new_valid_attributes["answers_attributes"] = []
        new_valid_attributes.merge({
          "answers_attributes" => new_valid_answers_attributes
        })
        new_valid_attributes[:observation] = new_attributes[:observation]
        
        put :update, params: {patient_id: anamnesis.patient.to_param, anamnesis: new_valid_attributes}, session: valid_session
        anamnesis.reload
        expect(anamnesis.observation).to eq(new_attributes[:observation])
        expect(anamnesis.answers.count).to eq(new_valid_answers_attributes.count)
      end

      it "renders a JSON response with the anamnesis" do
        anamnesis = Anamnesis.create! valid_attributes
        put :update, params: {patient_id: anamnesis.patient.to_param, anamnesis: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the anamnesis" do
        anamnesis = Anamnesis.create! valid_attributes
        put :update, params: {patient_id: anamnesis.patient.to_param, anamnesis: invalid_attributes}, session: valid_session
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
