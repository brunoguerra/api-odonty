require 'rails_helper'

RSpec.describe AnamnesisModel, type: :model do
  it { should validate_presence_of(:description) }
end
