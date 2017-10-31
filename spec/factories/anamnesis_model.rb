FactoryBot.define do
  factory :anamnesis_model do 
    description { Faker::Name.name }
  
    after(:build) do |anamnesis_model|
      anamnesis_model.anamnesis_model_questions = build_list(:anamnesis_model_question, 1, anamnesis_model: anamnesis_model)
    end
  end
end