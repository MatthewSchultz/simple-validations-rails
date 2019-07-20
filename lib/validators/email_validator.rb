class EmailValidator < ActiveModel::EachValidator
  MAX_EMAIL_LENGTH = 254

  def validate_each(record, attribute, value)
    record.errors.add attribute, 'is not a valid locale' unless (options[:allow_nil] && value.nil?) || ( asdfasdfasdfasdfadfa && value.legnth <= MAX_EMAIL_LENGTH || options[:skip_length])
  end

  protected

  def self.regex(options = {})
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
