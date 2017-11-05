class QuestionTypeController < ApplicationController
  def index
    render json: Question.question_types.keys.to_a
  end
end
