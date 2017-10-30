require 'rails_helper'


RSpec.describe ProceduresController, type: :controller do
  let(:valid_attributes) { FactoryBot.build(:procedure).attributes }

  let(:invalid_attributes) { { description: ''} }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProceduresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      procedure = Procedure.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      procedure = Procedure.create! valid_attributes
      get :show, params: {id: procedure.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Procedure" do
        expect {
          post :create, params: {procedure: valid_attributes}, session: valid_session
        }.to change(Procedure, :count).by(1)
      end

      it "renders a JSON response with the new procedure" do

        post :create, params: {procedure: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(procedure_url(Procedure.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new procedure" do

        post :create, params: {procedure: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { {description: "New description"} }

      it "updates the requested procedure" do
        procedure = Procedure.create! valid_attributes
        put :update, params: {id: procedure.to_param, procedure: new_attributes}, session: valid_session
        procedure.reload
        expect(procedure.description).to eq(new_attributes[:description])
      end

      it "renders a JSON response with the procedure" do
        procedure = Procedure.create! valid_attributes

        put :update, params: {id: procedure.to_param, procedure: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the procedure" do
        procedure = Procedure.create! valid_attributes

        put :update, params: {id: procedure.to_param, procedure: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested procedure" do
      procedure = Procedure.create! valid_attributes
      expect {
        delete :destroy, params: {id: procedure.to_param}, session: valid_session
      }.to change(Procedure, :count).by(-1)
    end
  end

end
