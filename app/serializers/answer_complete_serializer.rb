class AnswerCompleteSerializer < ActiveModel::Serializer
  attributes :id, :description, :auxiliar_text, :question

  belongs_to :question
end
