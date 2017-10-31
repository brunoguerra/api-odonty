require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  let(:valid_attributes) { FactoryBot.attributes_for :question }

  let(:invalid_attributes) { { description: '' } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QuestionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      question = Question.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      question = Question.create! valid_attributes
      get :show, params: {id: question.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Question" do
        expect {
          post :create, params: {question: valid_attributes}, session: valid_session
        }.to change(Question, :count).by(1)
      end

      it "renders a JSON response with the new question" do

        post :create, params: {question: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(question_url(Question.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new question" do

        post :create, params: {question: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { description: 'New Description', question_type:  Question.question_types.keys.first } }

      it "updates the requested question" do
        question = Question.create! valid_attributes
        put :update, params: {id: question.to_param, question: new_attributes}, session: valid_session
        question.reload
        expect(question.description).to eq(new_attributes[:description])
        expect(question.question_type).to eq(new_attributes[:question_type])
      end

      it "renders a JSON response with the question" do
        question = Question.create! valid_attributes

        put :update, params: {id: question.to_param, question: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the question" do
        question = Question.create! valid_attributes

        put :update, params: {id: question.to_param, question: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested question" do
      question = Question.create! valid_attributes
      expect {
        delete :destroy, params: {id: question.to_param}, session: valid_session
      }.to change(Question, :count).by(-1)
    end
  end

end
