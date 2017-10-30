require 'rails_helper'

RSpec.describe ProcedureCategoriesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProcedureCategory. As you add validations to ProcedureCategory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { FactoryBot.attributes_for :procedure_category }

  let(:invalid_attributes) { { description: '' }}

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProcedureCategoriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      procedure_category = ProcedureCategory.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      procedure_category = ProcedureCategory.create! valid_attributes
      get :show, params: {id: procedure_category.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProcedureCategory" do
        expect {
          post :create, params: {procedure_category: valid_attributes}, session: valid_session
        }.to change(ProcedureCategory, :count).by(1)
      end

      it "renders a JSON response with the new procedure_category" do

        post :create, params: {procedure_category: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(procedure_category_url(ProcedureCategory.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new procedure_category" do

        post :create, params: {procedure_category: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { {description: "Procedure Category description" }}

      it "updates the requested procedure_category" do
        procedure_category = ProcedureCategory.create! valid_attributes
        put :update, params: {id: procedure_category.to_param, procedure_category: new_attributes}, session: valid_session
        procedure_category.reload
        expect(procedure_category.description).to eq(new_attributes[:description])
      end

      it "renders a JSON response with the procedure_category" do
        procedure_category = ProcedureCategory.create! valid_attributes

        put :update, params: {id: procedure_category.to_param, procedure_category: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the procedure_category" do
        procedure_category = ProcedureCategory.create! valid_attributes

        put :update, params: {id: procedure_category.to_param, procedure_category: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested procedure_category" do
      procedure_category = ProcedureCategory.create! valid_attributes
      expect {
        delete :destroy, params: {id: procedure_category.to_param}, session: valid_session
      }.to change(ProcedureCategory, :count).by(-1)
    end
  end

end
