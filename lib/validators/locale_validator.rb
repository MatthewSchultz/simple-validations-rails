class LocaleValidator < PluginValidator
  protected

  def validation_message
    'is not a valid locale.'
  end

  def is_valid?(value)
    I18n.locale_available?(value)
  end
end
