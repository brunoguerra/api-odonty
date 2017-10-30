FactoryBot.define do
  factory :person do
    name { Faker::Name.name }
    birthdate 40.years.ago
    cpf '01459895185'
    rg { Faker::Number.number(10) }
    gender { Person.genders.keys.sample.to_sym }
    phone { Faker::PhoneNumber.phone_number }
    
    before(:create) do |person| 
      person.address = create(:address, addressable: person)
    end
  end
end