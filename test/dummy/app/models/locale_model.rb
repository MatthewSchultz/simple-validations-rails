class LocaleModel < ApplicationRecord
  validates :lo_value, locale: true
  validates :nil_lo_value, locale: {allow_blank: true}
end
