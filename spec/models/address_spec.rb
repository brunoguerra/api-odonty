require 'rails_helper'

RSpec.describe Address, type: :model do
  # Association test
  it { should belong_to(:addressable) }

  # Validation tests
  it { should validate_presence_of(:street) }
  it { should validate_presence_of(:neighborhood) }
  it { should validate_presence_of(:postal_code) }
end
