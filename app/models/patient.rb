class Patient < ApplicationRecord
	self.primary_key = "person_id"
  belongs_to :person, foreign_key: "person_id"
end
