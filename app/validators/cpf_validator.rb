require "cpf_cnpj"

class CPFValidator < ActiveModel::Validator
  def validate(record)
    cpf_attribute_sym  = options[:attribute] ? options[:attribute] : :cpf 

    unless CPF.new(record[cpf_attribute_sym]).valid?
      record.errors[cpf_attribute_sym] << 'Wrong value'
    end
  end
end