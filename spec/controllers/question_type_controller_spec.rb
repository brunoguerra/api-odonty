require 'rails_helper'

RSpec.describe QuestionTypeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response.body).to eq(Question.question_types.keys.to_a.to_json)
    end
  end

end
