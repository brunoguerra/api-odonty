class TreatmentSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :plan_id
end
