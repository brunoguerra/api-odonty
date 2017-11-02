require "cpf_cnpj"

class CPFValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless CPF.new(value).valid?
      record.errors[attribute] << 'Wrong value'
    end
  end
end