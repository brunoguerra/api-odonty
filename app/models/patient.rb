class Patient < ApplicationRecord
  before_create :build_additional
  after_create :build_anamnesis
  
  self.primary_key = "person_id"
  
  belongs_to :person, foreign_key: "person_id", :required => true
  has_one :additional, validate: true #, :required => true
  has_one :anamnesis

  accepts_nested_attributes_for :person
  accepts_nested_attributes_for :additional
  
  validates_associated :person
  validates :responsable_cpf, :CPF => true

  
  private 

  def build_additional
    self.additional = Additional.new unless self.additional
  end

  def build_anamnesis
    self.anamnesis = Anamnesis.create(anamnesis_model: AnamnesisModel.first) unless self.anamnesis
  end
  
end
