require 'rails_helper'

RSpec.describe Chair, type: :model do
  it { should validate_presence_of(:description)}
  it { should validate_uniqueness_of(:description)}
end
