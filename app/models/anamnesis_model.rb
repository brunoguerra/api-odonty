class AnamnesisModel < ApplicationRecord
  has_many :anamnesis_questions
  has_many :questions, :through => :anamnesis_questions
  validates_presence_of :description
end
