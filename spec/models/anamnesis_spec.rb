require 'rails_helper'

RSpec.describe Anamnesis, type: :model do
  it { should belong_to(:anamnesis_model)}
  it { should belong_to(:patient)}

  it { should validate_presence_of(:anamnesis_model)}
  it { should validate_presence_of(:patient)}
end
