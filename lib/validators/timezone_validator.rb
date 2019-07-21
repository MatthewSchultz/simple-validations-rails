class TimezoneValidator < PluginValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, message_or('is not a valid timezone') unless is_valid?(value)
  end

  protected

  def is_valid?(value)
    ActiveSupport::TimeZone.all.map(&:name).include?(value) || (allows_nil? && value.nil?)
  end
end
