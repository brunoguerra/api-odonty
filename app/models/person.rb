class Person < ApplicationRecord
  enum gender: [:male, :female]
  has_one :address, 
          validate: true, 
          :as => :addressable, 
          :required => true, 
          :dependent => :destroy

  validates :name, :birthdate, :cpf, :rg, :gender, :presence => true
  validates_with CPFValidator

  accepts_nested_attributes_for :address

end
