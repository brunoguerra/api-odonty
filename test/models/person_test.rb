require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  test 'should have the necessary required validators' do
    person = Person.new
    assert_not person.valid?
    assert_equal %i[address name birthdate cpf rg gender ], person.errors.keys
  end

end
