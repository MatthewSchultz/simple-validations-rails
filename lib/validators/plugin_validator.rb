class PluginValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || validation_message) unless (allows_nil? && value.nil?) || is_valid?(value)
  end

  protected

  def allows_nil?()
    if options[:allow_nil]
      ActiveSupport::Deprecation.warn('allow_nil is depreciated in favor of the more standard allow_blank')
      return true
    elsif options[:allow_blank]
      return true
    else
      return false
    end
  end

  # Called to validate the value:
  def is_valid?(value)
    raise NotImplementedError, 'PluginValidator is not designed to be used directly'
  end

  # Returns the default validation message:
  def validation_message
    raise NotImplementedError, 'PluginValidator is not designed to be used directly'
  end
end
