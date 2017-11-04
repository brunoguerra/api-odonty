require 'rails_helper'

RSpec.describe PlansController, type: :controller do

  let(:valid_attributes) { FactoryBot.attributes_for :plan }
  let(:invalid_attributes) { {description: ''} }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      plan = Plan.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      plan = Plan.create! valid_attributes
      get :show, params: {id: plan.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Plan" do
        expect {
          post :create, params: {plan: valid_attributes}, session: valid_session
        }.to change(Plan, :count).by(1)
      end

      it "renders a JSON response with the new plan" do

        post :create, params: {plan: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(plan_url(Plan.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new plan" do

        post :create, params: {plan: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { {description: 'New Description'} }

      it "updates the requested plan" do
        plan = Plan.create! valid_attributes
        put :update, params: {id: plan.to_param, plan: new_attributes}, session: valid_session
        plan.reload
        expect(plan.description).to eq(new_attributes[:description])
      end

      it "renders a JSON response with the plan" do
        plan = Plan.create! valid_attributes

        put :update, params: {id: plan.to_param, plan: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the plan" do
        plan = Plan.create! valid_attributes

        put :update, params: {id: plan.to_param, plan: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested plan" do
      plan = Plan.create! valid_attributes
      expect {
        delete :destroy, params: {id: plan.to_param}, session: valid_session
      }.to change(Plan, :count).by(-1)
    end
  end

end
