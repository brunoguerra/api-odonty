FactoryBot.define do
  factory :patient do
    # primary_key "person_id"
    observation { Faker::Lorem.word }
    responsable { Faker::Name.name }
    responsable_cpf '01459895185'
    person
    additional
    
  end
end