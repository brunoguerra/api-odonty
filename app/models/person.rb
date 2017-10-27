require "cpf_cnpj"

class Person < ApplicationRecord
  enum gender: [:male, :female]
  validates :name, :birthdate, :cpf, :rg, :gender, :presence => true

  def cpf=(cpf)
    write_attribute(:cpf, CPF.stripped(cpf)) if CPF.valid?(cpf)
  end
  
  def cpf
    read_attribute(:cpf)
  end

end
