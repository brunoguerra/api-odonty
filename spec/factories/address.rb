FactoryBot.define do
  factory :address do
    postal_code '75000000'
    street Faker::Address.street_name
    adress_number { Faker::Address.building_number}
    complement { Faker::Address.secondary_address }
    neighborhood { Faker::Address.community  }
    association :addressable, factory: :person
  end
end
