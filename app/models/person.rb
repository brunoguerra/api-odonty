require "cpf_cnpj"

class Person < ApplicationRecord
  enum gender: [:male, :female]
  has_one :address, validate: true, :as => :addressable, :required => true, :dependent => :destroy

  validates :name, :birthdate, :cpf, :rg, :gender, :presence => true

  accepts_nested_attributes_for :address
  

  def cpf=(cpf)
    cpf =  CPF.new(cpf)
    return unless cpf.valid?
    write_attribute(:cpf, cpf.stripped)
  end
  
  def cpf
    read_attribute(:cpf)
  end

end
