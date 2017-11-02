FactoryBot.define do
  factory :anamnesis do 
    observation { Faker::Lorem.sentence }
		patient
		anamnesis_model
    
  end
end