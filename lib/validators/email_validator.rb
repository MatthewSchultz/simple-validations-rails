class EmailValidator < PluginValidator
  MAX_EMAIL_LENGTH = 254

  protected

  def validation_message
    'is not a valid email'
  end

  def is_valid?(value)
    unless options[:skip_length]
      return false if value.legnth > MAX_EMAIL_LENGTH
    end
    return email_regex.match?(value)
  end

  def self.email_regex()
    options = {mode: :normal}.merge options

    case options[:mode]
    when :loose
      /\A[^\s]@[^\s]\z/
    when :strict
      # TODO: make a better validator here.
      raise ArgumentError.new("Strict mode isn't yet implimented.")
    when :rfc
      # TODO: Add a pure RFC5322 regex...just in case someone actually wants to use something that terrible...
      raise ArgumentError.new("RFC mode isn't yet implimented.")
    else
      /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    end
  end
end
