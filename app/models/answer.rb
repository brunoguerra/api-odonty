class Answer < ApplicationRecord
  belongs_to :anamnesis
  belongs_to :question

  validates_presence_of :anamnesis, :question
end
