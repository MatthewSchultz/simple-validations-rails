require 'test_helper'

class TimezoneValidatorTest < ActiveSupport::TestCase
  VALID_TIME_ZONE = "Central Time (US & Canada)"
  INVALID_TIME_ZONE = "Not a timezone"

  test "model exists and functions" do
    model = TimeZoneModel.new
    assert model.tz_value.nil?
    assert model.nil_tz_value.nil?
  end

  test "validation works" do
    model = TimeZoneModel.new
    assert_not model.valid?

    assert_includes model.errors, :tz_value
    assert_not_includes model.errors, :nil_tz_value
  end

  test "allows valid data" do
    model = TimeZoneModel.new(tz_value: VALID_TIME_ZONE)
    assert model.valid?
    model.nil_tz_value = VALID_TIME_ZONE
    assert model.valid?
  end

  test "prevents invalid data" do
    model = TimeZoneModel.new(tz_value: INVALID_TIME_ZONE, nil_tz_value: INVALID_TIME_ZONE)
    assert_not model.valid?

    assert_includes model.errors, :tz_value
    assert_includes model.errors, :nil_tz_value
  end
end
