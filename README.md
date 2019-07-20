# simple-validations-rails
A simple set of validations I got tired of writing over and over and over again. Includes boolean, locale, and email validators.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'simple-validations-rails'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install simple-validations-rails
```

## Usage

It's a set of validators...and is therefore used like other [validators](https://guides.rubyonrails.org/active_record_validations.html).

### Boolean Validator

Validates that the value is actually **true** or **false**.
```ruby
validates :allow_something, boolean: true # Allows only non-null booleanish values (most values that aren't nil are true - but in this case, nil is NOT false, and thus fails).
validates :preference_that_can_be_null, boolean: {allow_nil: true} # Allows basically anything. Probably this is useless...
validates :strict_preference, boolean: {strict: true} # Allows ONLY true or false.
validates :strict_preference_that_can_be_null, boolean: {strict: true, allow_nil: true} # Allows ONLY true, false, or nil.
```

### Locale Validator

Validates that the value is within the allowed locales for the application.
```ruby
validates locale, locale: true # Allows strings/symbols, checks against available locales.
validates locale, locale: {allow_nil: true} # Same as above, but nil is valid.
```

### Email Validator

TODO: Documentation

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
