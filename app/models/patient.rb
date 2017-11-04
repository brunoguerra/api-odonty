class Patient < ApplicationRecord
  before_create :set_additional
  after_create :set_anamnesis
  
  self.primary_key = "person_id"
  
  belongs_to :person, foreign_key: "person_id", :required => true
  has_one :additional, validate: true #, :required => true
  has_one :anamnesis

  accepts_nested_attributes_for :person
  accepts_nested_attributes_for :additional
  
  validates_associated :person
  validates :responsable_cpf, :CPF => true

  
  private 

  def set_additional
    self.additional = Additional.new unless self.additional
  end

  def set_anamnesis
    return if self.anamnesis
    default_anamnesis_model = AnamnesisModel.first
    self.anamnesis = Anamnesis.create(anamnesis_model: default_anamnesis_model) if default_anamnesis_model
  end
  
end
