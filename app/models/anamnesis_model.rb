class AnamnesisModel < ApplicationRecord
  has_many :anamnesis_model_questions
  has_many :questions, :through => :anamnesis_model_questions

  validates_presence_of :description, :anamnesis_model_questions
  
end
