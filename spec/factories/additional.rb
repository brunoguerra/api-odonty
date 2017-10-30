FactoryBot.define do
  factory :additional do
    email { Faker::Internet.email }
  end
end
