require 'test_helper'

class BooleanValidatorTest < ActiveSupport::TestCase
  setup do
    @model = BooleanModel.new
    assert @model.present?
  end

  test "model exists and functions" do
    assert @model.normal_bool_value.nil?
    assert @model.nil_bool_value.nil?
  end

  test "validation works" do
    assert_not @model.valid?
  end
end
