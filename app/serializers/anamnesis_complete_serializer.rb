class AnamnesisCompleteSerializer < ActiveModel::Serializer
  attributes :id, :anamnesis_model_id, :observation, :patient_id

  has_many :answers, :serializer => AnswerCompleteSerializer
end
