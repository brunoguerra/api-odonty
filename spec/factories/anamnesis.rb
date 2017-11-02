FactoryBot.define do
  factory :anamnesis do 
    observation { Faker::Lorem.sentence }
		patient
		anamnesis_model
    
    after(:build) do |anamnesis|
      anamnesis.anamnesis_model.questions.each do |question|
        anamnesis.answers << build(:answer,question: question)
      end
    end

  end
end