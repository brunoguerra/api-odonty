class Anamnesis < ApplicationRecord
	belongs_to :anamnesis_model
	belongs_to :patient
	has_many :answers

	validates_presence_of :anamnesis_model, :patient

	accepts_nested_attributes_for :answers
end
