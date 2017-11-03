class Anamnesis < ApplicationRecord
	belongs_to :anamnesis_model
	belongs_to :patient
	has_many :answers
	has_many :questions, :through => :anamnesis_model

	validates_presence_of :anamnesis_model, :patient

	accepts_nested_attributes_for :answers
end
