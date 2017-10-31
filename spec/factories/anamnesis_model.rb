FactoryBot.define do
  factory :anamnesis_model do 
    description { Faker::Name.name }

    after(:create) do |anamnesis_model|
      create_list(:anamnesis_model_question, 1, anamnesis_model: anamnesis_model)
    end
  end
end