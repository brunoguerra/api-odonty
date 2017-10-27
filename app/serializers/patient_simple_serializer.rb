class PatientSimpleSerializer < ActiveModel::Serializer
  attributes :id 
  
  belongs_to :person, :serializer => PersonSimpleSerializer
end
