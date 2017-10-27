require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  
  test 'should have the necessary required validators' do
    patient = Patient.new
    assert_not patient.valid?
    assert_equal %i[person additional], patient.errors.keys
  end

end
