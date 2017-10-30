require 'rails_helper'

RSpec.describe Procedure, type: :model do
  # Association test
  it { should belong_to(:procedure_category) }

  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:procedure_category_id) }
  it { should validate_uniqueness_of(:description) }
    
end
