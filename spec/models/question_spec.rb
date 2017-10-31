require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:question_type)}
end
