require 'test_helper'

class LocaleValidatorTest < ActiveSupport::TestCase
  VALID_LOCALE = "en"
  INVALID_LOCALE = "nope"
  NOT_INCLUDED_LOCALE = 'ar'

  test "model exists and functions" do
    model = LocaleModel.new
    assert model.lo_value.nil?
    assert model.nil_lo_value.nil?
  end

  test "validation works" do
    model = LocaleModel.new
    assert_not model.valid?

    assert_includes model.errors, :lo_value
    assert_not_includes model.errors, :nil_lo_value
  end

  test "allows valid data" do
    model = LocaleModel.new(lo_value: VALID_LOCALE)
    assert model.valid?
    model.nil_lo_value = VALID_LOCALE
    assert model.valid?
  end

  test "prevents invalid data" do
    model = LocaleModel.new(lo_value: INVALID_LOCALE, nil_lo_value: INVALID_LOCALE)
    assert_not model.valid?

    assert_includes model.errors, :lo_value
    assert_includes model.errors, :nil_lo_value
  end

  test "prevents missing locales" do
    model = LocaleModel.new(lo_value: NOT_INCLUDED_LOCALE, nil_lo_value: NOT_INCLUDED_LOCALE)
    assert_not model.valid?

    assert_includes model.errors, :lo_value
    assert_includes model.errors, :nil_lo_value
  end
end
