class PersonSimpleSerializer < ActiveModel::Serializer
  attributes :name, :cpf, :gender
end
