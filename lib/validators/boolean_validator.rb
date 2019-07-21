class BooleanValidator < PluginValidator
  protected

  def validation_message
    'is not a valid value.'
  end

  def is_valid?(value)
    return true if !options[:strict] && value.present?
    return true if [true, false].include?(value)
    return true if allows_nil? && value.nil?
    return false
  end
end
