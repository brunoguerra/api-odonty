class PatientCompleteSerializer < ActiveModel::Serializer
  attributes :id, :additional
  
  belongs_to :person, :serializer => PersonCompleteSerializer
end
