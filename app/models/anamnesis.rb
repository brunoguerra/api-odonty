class Anamnesis < ApplicationRecord
	belongs_to :anamnesis_model
	belongs_to :patient

	validates_presence_of :anamnesis_model, :patient
end
