class Treatment < ApplicationRecord
  belongs_to :patient
  belongs_to :plan

  validates_presence_of :patient, :plan
end
