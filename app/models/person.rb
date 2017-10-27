class Person < ApplicationRecord
  validates :name, :birthdate, :cpf, :rg, :gender, :presence => true
end
