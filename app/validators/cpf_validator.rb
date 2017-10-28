require "cpf_cnpj"

class CPFValidator < ActiveModel::Validator
  def validate(record)
    unless CPF.new(record.cpf).valid?
      record.errors[:cpf] << 'Wrong value'
    end
  end
end