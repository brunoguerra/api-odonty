class Procedure < ApplicationRecord
  belongs_to :procedure_category

  validates_presence_of :description, :procedure_category_id
  validates_uniqueness_of :description
end
