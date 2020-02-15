## 0.0.5 / 2020-02-15

* [ENHANCEMENT] Relax gemspec to allow Rails 6.

## 0.0.4 / 2019-07-21

* [FEATURE] Add TimezoneValidator
* [BUGFIX] Fix BooleanValidatorTest class name
* [BUGFIX] Require Ruby 2.4 to enable pattern match. See [Release Notes](https://www.ruby-lang.org/en/news/2016/12/25/ruby-2-4-0-released/) for info.
* [BUGFIX] Actually make EmailValidator work
* [ENHANCEMENT] Testing for LocaleValidator.
* [ENHANCEMENT] Support message option.
* [ENHANCEMENT] **allow_nil** becomes **allow_blank**. This follows the conventions of rails' built-in validators. **allow_nil** still works, but is depreciated.
* [ENHANCEMENT] DRY up the validators.

## 0.0.3 / 2019-07-21

* [BUGFIX] Rename all files appropriately so the gem actually works.
* [DOCUMENTATION] Add CHANGELOG.md

## 0.0.2 / 2019-07-20

* [BUGFIX] Add require active_model.

## 0.0.1 / 2019-07-20

* Initial Release.
