# [Ratel][gem_page]

[![Build Status][travis_status_image]][travis_page]
[![Maintainability][code_climate_maintainability_image]][code_climate_maintainability_page]
[![Test Coverage][code_climate_test_coverage_image]][code_climate_test_coverage_page]

A bad words validator for Rails applications

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ratel', github: 'petlove/ratel'
```

## Using

You can use this gem in two ways:

1. Using in active models validates

```ruby
class Person
  include ActiveModel::Validations

  attr_accessor :name

  validates :name, valid_text: true

  #...
end
```

1. Using the validator

```ruby
Ratel::Validator.valid?('linqueta')
```

### Error output

Will be raised this error when the value was invalid:

```ruby
Person.new('cachorrao').validate!
# => ActiveModel::ValidationError: Validation failed: Name deve ser um valor válido
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License][mit_license_page].

## Code of Conduct

Everyone interacting in the Rails::Healthcheck project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct][code_of_conduct_page].

[gem_page]: https://github.com/petlove/ratel
[code_of_conduct_page]: https://github.com/petlove/ratel/blob/master/CODE_OF_CONDUCT.md
[mit_license_page]: https://opensource.org/licenses/MIT
[contributor_convenant_page]: http://contributor-covenant.org
[travis_status_image]: https://travis-ci.org/petlove/ratel.svg?branch=master
[travis_page]: https://travis-ci.org/petlove/ratel
[code_climate_maintainability_image]: https://api.codeclimate.com/v1/badges/2b9a2174ac460c3f44ad/maintainability
[code_climate_maintainability_page]: https://codeclimate.com/github/petlove/ratel/maintainability
[code_climate_test_coverage_image]: https://api.codeclimate.com/v1/badges/2b9a2174ac460c3f44ad/test_coverage
[code_climate_test_coverage_page]: https://codeclimate.com/github/petlove/ratel/test_coverage
