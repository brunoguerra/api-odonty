class Plan < ApplicationRecord
  validates_presence_of :description
  validates_uniqueness_of :description
end
