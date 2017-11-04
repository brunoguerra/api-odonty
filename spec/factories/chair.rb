FactoryBot.define do
  factory :chair do
    description { Faker::Lorem.sentence }
  end
end