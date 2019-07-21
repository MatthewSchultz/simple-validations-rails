class BooleanValidator < PluginValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, 'is not a valid boolean' unless (!options[:strict] && value.present?) || [true, false].include?(value) || (options[:allow_nil] && value.nil?)
  end
end
