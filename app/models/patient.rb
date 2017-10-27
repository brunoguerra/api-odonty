class Patient < ApplicationRecord
	self.primary_key = "person_id"
  
  belongs_to :person, foreign_key: "person_id", :required => true
  accepts_nested_attributes_for :person
  validates_associated :person
  
end
