require 'rails_helper'

RSpec.describe AnamnesisModel, type: :model do
  it { should validate_presence_of(:description) }
  it { should have_many(:anamnesis_model_questions) }
  it { should have_many(:questions).through(:anamnesis_model_questions) }
  
end
