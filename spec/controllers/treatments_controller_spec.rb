require 'rails_helper'

RSpec.describe TreatmentsController, type: :controller do

  let(:valid_attributes) { FactoryBot.build(:treatment).attributes }

  let(:invalid_attributes) { {plan_id: nil} }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      treatment = Treatment.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      treatment = Treatment.create! valid_attributes
      get :show, params: {id: treatment.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Treatment" do
        expect {
          post :create, params: {treatment: valid_attributes}, session: valid_session
        }.to change(Treatment, :count).by(1)
      end

      it "renders a JSON response with the new treatment" do

        post :create, params: {treatment: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(treatment_url(Treatment.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new treatment" do

        post :create, params: {treatment: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { {plan_id: Plan.last.id} }

      it "updates the requested treatment" do
        treatment = Treatment.create! valid_attributes
        put :update, params: {id: treatment.to_param, treatment: new_attributes}, session: valid_session
        treatment.reload
        expect(treatment.plan.id).to eq(new_attributes[:plan_id])
      end

      it "renders a JSON response with the treatment" do
        treatment = Treatment.create! valid_attributes

        put :update, params: {id: treatment.to_param, treatment: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the treatment" do
        treatment = Treatment.create! valid_attributes

        put :update, params: {id: treatment.to_param, treatment: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested treatment" do
      treatment = Treatment.create! valid_attributes
      expect {
        delete :destroy, params: {id: treatment.to_param}, session: valid_session
      }.to change(Treatment, :count).by(-1)
    end
  end

end
