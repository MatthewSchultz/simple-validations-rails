class LocaleValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, 'is not a valid locale' unless I18n.locale_available?(value) || (options[:allow_nil] && value.nil?)
  end
end
