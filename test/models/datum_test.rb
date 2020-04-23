require 'test_helper'

class DatumTest < ActiveSupport::TestCase
  def setup
    @datum = Datum.new(address: "238 Flinders Street", age: 19, mobilenumber: 9824101500)
  end

  test "should be valid" do
    assert @datum.valid?
  end

  test "address should not be empty" do
    @datum.address = "      "
    assert @datum.invalid?
  end

  test "age must be greater than 18" do
    @datum.age = 17
    assert @datum.invalid?
  end

  test "mobile must be 10 digit" do
    @datum.mobilenumber = 982410150
    assert @datum.invalid?
  end

end
