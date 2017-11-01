class AnamnesisSerializer < ActiveModel::Serializer
  attributes :id, :anamnesis_model_id, :observation, :patient_id
end
