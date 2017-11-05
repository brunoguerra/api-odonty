class AnswerCompleteSerializer < ActiveModel::Serializer
  attributes :id, :question

  belongs_to :question
end
