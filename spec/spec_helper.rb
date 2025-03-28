# frozen_string_literal: true

require 'bundler/setup'
require 'support/configs/simple_cov_config'
SimpleCovConfig.configure

require File.expand_path('../spec/dummy/config/environment.rb', __dir__)
ENV['RAILS_ROOT'] ||= File.expand_path('../../../spec/dummy', __dir__)

require 'rspec/rails'
require 'ratel'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
