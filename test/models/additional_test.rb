require 'test_helper'

class AdditionalTest < ActiveSupport::TestCase
  
  test 'should have a valid email ' do
    additional = Additional.new
    additional.email = "non valid email"
    assert_not additional.valid?

    additional.email = "valid@email.com"
    assert additional.valid?
  end

end
