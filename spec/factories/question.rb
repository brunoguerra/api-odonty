FactoryBot.define do
  factory :question do
    description { Faker::Name.name }
    question_type { Question.question_types.keys.sample.to_sym }
  end
end