class BooleanValidator < PluginValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, message_or('is not a valid boolean') unless is_valid?(value)
  end

  protected

  def is_valid?(value)
    return true if !options[:strict] && value.present?
    return true if [true, false].include?(value)
    return true if allows_nil? && value.nil?
    return false
  end
end
