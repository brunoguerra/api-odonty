class QuestionSerializer < ActiveModel::Serializer
  attributes( :id, :description, :question_type, :auxiliar_text,
              :is_an_alert, :is_an_alert_when, :alert_text)

  #has_many :answers
end
