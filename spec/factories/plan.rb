FactoryBot.define do
  factory :plan do
    description { Faker::Lorem.sentence }
  end
end