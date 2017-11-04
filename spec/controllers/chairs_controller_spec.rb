require 'rails_helper'

RSpec.describe ChairsController, type: :controller do

  let(:valid_attributes) { FactoryBot.attributes_for :chair }

  let(:invalid_attributes) { { description: '' }}

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ChairsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      chair = Chair.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      chair = Chair.create! valid_attributes
      get :show, params: {id: chair.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Chair" do
        expect {
          post :create, params: {chair: valid_attributes}, session: valid_session
        }.to change(Chair, :count).by(1)
      end

      it "renders a JSON response with the new chair" do

        post :create, params: {chair: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(chair_url(Chair.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new chair" do

        post :create, params: {chair: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { {description: 'New description'}}

      it "updates the requested chair" do
        chair = Chair.create! valid_attributes
        put :update, params: {id: chair.to_param, chair: new_attributes}, session: valid_session
        chair.reload
        expect(chair.description).to eq(new_attributes[:description])
      end

      it "renders a JSON response with the chair" do
        chair = Chair.create! valid_attributes

        put :update, params: {id: chair.to_param, chair: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the chair" do
        chair = Chair.create! valid_attributes

        put :update, params: {id: chair.to_param, chair: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested chair" do
      chair = Chair.create! valid_attributes
      expect {
        delete :destroy, params: {id: chair.to_param}, session: valid_session
      }.to change(Chair, :count).by(-1)
    end
  end

end
