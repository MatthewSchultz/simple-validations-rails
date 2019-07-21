class TimeZoneModel < ApplicationRecord
  validates :tz_value, timezone: true
  validates :nil_tz_value, timezone: { allow_blank: true }
end
