require 'rails_helper'

RSpec.describe Anamnesis, type: :model do
  it { should belong_to(:anamnesis_model)}
  it { should belong_to(:patient)}
end
