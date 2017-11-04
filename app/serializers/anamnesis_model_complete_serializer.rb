class AnamnesisModelCompleteSerializer < ActiveModel::Serializer
  attributes :id, :description

  has_many :anamnesis_model_questions, :serializer => AnamnesisModelQuestionCompleteSerializer
end
