class BooleanModel < ApplicationRecord
  validates :normal_bool_value, boolean: true
end
