# simple-validations-rails ![Gem](https://img.shields.io/gem/v/simple-validations-rails.svg)
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

Validates that the value is boolean in nature.
```ruby
# Allows only non-null booleanish values (most values that aren't nil are true - but in this case, nil is NOT false, and thus fails).
validates :allow_something, boolean: true

# Allows basically anything. Probably this is useless...
validates :preference_that_can_be_null, boolean: {allow_nil: true}

# Allows ONLY true or false.
validates :strict_preference, boolean: {strict: true}

# Allows ONLY true, false, or nil.
validates :strict_preference_that_can_be_null, boolean: {strict: true, allow_nil: true}
```

### Locale Validator

Validates that the value is within the allowed locales for the application.
```ruby
# Allows strings/symbols, checks against available locales.
validates :locale, locale: true

# Same as above, but nil is valid.
validates :locale, locale: {allow_nil: true}
```

### Timezone Validator

Validates that the value is a valid timezone.
```ruby
# Allows strings/symbols, checks against available locales.
validates :time_zone, timezone: true

# Same as above, but nil is valid.
validates :time_zone, timezone: {allow_nil: true}
```

### Email Validator

TODO: Documentation

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
