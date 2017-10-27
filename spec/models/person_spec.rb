require 'rails_helper'

RSpec.describe Person, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_one(:address).dependent(:destroy) }
  # Validation tests
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:birthdate) }
  it { should validate_presence_of(:cpf) }
  it { should validate_presence_of(:rg) }
end
