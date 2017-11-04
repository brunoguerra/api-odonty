require 'rails_helper'

RSpec.describe Treatment, type: :model do
  it { should belong_to(:plan)}
  it { should belong_to(:patient)}

  it { should validate_presence_of(:plan)}
  it { should validate_presence_of(:patient)}
end
