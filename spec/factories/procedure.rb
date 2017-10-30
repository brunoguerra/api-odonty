FactoryBot.define do
  factory :procedure do
    description { Faker::Name.name }
    procedure_category
  end
end