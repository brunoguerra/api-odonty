require 'rails_helper'

RSpec.describe AnamnesisModelsController, type: :controller do

  let(:valid_object) { FactoryBot.build(:anamnesis_model)}
  let(:valid_questions_attributes) { 
    Array.new(valid_object.anamnesis_model_questions.size)  do |i| 
      valid_object.anamnesis_model_questions[i].attributes
    end  
  }
  let(:valid_attributes) { 
    valid_object.attributes.merge({
      "anamnesis_model_questions_attributes" => valid_questions_attributes 
    })
  }

  let(:invalid_attributes) { { description: ''} }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AnamnesisModelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      anamnesis_model = AnamnesisModel.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response with an existing AnamnesisModel" do
      FactoryBot.create_list(:question,10)
      anamnesis_model = AnamnesisModel.create! valid_attributes
      get :show, params: {id: anamnesis_model.to_param}, session: valid_session
      expect(response).to be_success
    end

    it "returns a success response with a non existing AnamnesisModel" do
      FactoryBot.create_list(:question,10)
      get :show, params: {id: 0}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new AnamnesisModel" do
        expect {
          post :create, params: {
            anamnesis_model: valid_attributes
            }, session: valid_session
        }.to change(AnamnesisModel, :count).by(1)
      end

      it "renders a JSON response with the new anamnesis_model" do

        post :create, params: {anamnesis_model: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(anamnesis_model_url(AnamnesisModel.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new anamnesis_model" do

        post :create, params: {anamnesis_model: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { description: 'New Description'}}

      it "updates the requested anamnesis_model" do
        anamnesis_model = AnamnesisModel.create! valid_attributes
        put :update, params: {id: anamnesis_model.to_param, anamnesis_model: new_attributes}, session: valid_session
        anamnesis_model.reload
        expect(anamnesis_model.description).to eq(new_attributes[:description])
      end

      it "renders a JSON response with the anamnesis_model" do
        anamnesis_model = AnamnesisModel.create! valid_attributes

        put :update, params: {id: anamnesis_model.to_param, anamnesis_model: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the anamnesis_model" do
        anamnesis_model = AnamnesisModel.create! valid_attributes

        put :update, params: {id: anamnesis_model.to_param, anamnesis_model: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested anamnesis_model" do
      anamnesis_model = AnamnesisModel.create! valid_attributes
      expect {
        delete :destroy, params: {id: anamnesis_model.to_param}, session: valid_session
      }.to change(AnamnesisModel, :count).by(-1)
    end
  end

end
