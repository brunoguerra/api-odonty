class Patient < ApplicationRecord
	self.primary_key = "person_id"
  
  belongs_to :person, foreign_key: "person_id", :required => true
  has_one :additional, validate: true, :required => true
  has_one :anamnesis

  accepts_nested_attributes_for :person
  accepts_nested_attributes_for :additional
  
  validates_associated :person
  validates :responsable_cpf, :CPF => true
  
end
