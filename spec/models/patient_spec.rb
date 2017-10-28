require 'rails_helper'

RSpec.describe Patient, type: :model do
  # Association test
  it { should belong_to(:person) }
end
