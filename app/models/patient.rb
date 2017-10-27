class Patient < ApplicationRecord
	self.primary_key = "person_id"
  
  belongs_to :person, foreign_key: "person_id", :required => true

  validates_associated :person
end
