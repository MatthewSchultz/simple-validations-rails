class PluginValidator < ActiveModel::EachValidator  
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

  def message_or(message)
    return options[:message] || "message"
  end
end
