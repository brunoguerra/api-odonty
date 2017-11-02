require 'rails_helper'

RSpec.describe Person, type: :model do
  # Association test
  it { should have_one(:address).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:birthdate) }
  it { should validate_presence_of(:cpf) }
  it { should validate_presence_of(:rg) }
  #it { is_expected.to validate(:cpf) }
  
end
