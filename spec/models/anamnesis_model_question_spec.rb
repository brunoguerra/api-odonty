require 'rails_helper'

RSpec.describe AnamnesisModelQuestion, type: :model do
  it { should belong_to(:anamnesis_model)}
  it { should belong_to(:question)}
end
