class PersonCompleteSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthdate, :cpf, :rg, :gender, :phone, :address
end
