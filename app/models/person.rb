class Person < ApplicationRecord
  enum gender: [:male, :female]
  has_one :address, 
          validate: true, 
          :as => :addressable, 
          :required => true, 
          :dependent => :destroy, 
          :inverse_of => :addressable

  validates :name, :birthdate, :cpf, :rg, :gender, :presence => true
  validates_with CPFValidator

  accepts_nested_attributes_for :address

end
