class AnamnesisModel < ApplicationRecord
  has_many :anamnesis_model_questions
  has_many :questions, :through => :anamnesis_model_questions
  has_many :anamneses

  validates_presence_of :description, :anamnesis_model_questions

  accepts_nested_attributes_for :anamnesis_model_questions
  
end
