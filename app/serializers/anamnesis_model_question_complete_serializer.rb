class AnamnesisModelQuestionCompleteSerializer < ActiveModel::Serializer
  attributes :id, :enabled, :question

  belongs_to :question
end
