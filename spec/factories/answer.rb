FactoryBot.define do
  factory :answer do
    description { Faker::Lorem.sentence}
    auxiliar_text { Faker::Lorem.sentence}
    question
  end
end