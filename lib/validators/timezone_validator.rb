class TimezoneValidator < PluginValidator
  protected

  def validation_message
    'is not a valid time zone.'
  end

  def is_valid?(value)
    ActiveSupport::TimeZone.all.map(&:name).include?(value)
  end
end
