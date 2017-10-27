require "test_helper"

class AddressTest < ActiveSupport::TestCase

  test 'should have the necessary required validators' do
    address = Address.new
    assert_not address.valid?
    assert_equal %i[addressable street postal_code neighborhood], address.errors.keys
  end

end
