FactoryBot.define do
  factory :question do
    description { Faker::Name.name }
    auxiliar_text { Faker::Name.name }
    is_an_alert { Faker::Boolean.boolean }
    is_an_alert_when { Question.is_an_alert_whens.keys.sample.to_sym }
    alert_text { Faker::Name.name }
    question_type { Question.question_types.keys.sample.to_sym }
  end
end