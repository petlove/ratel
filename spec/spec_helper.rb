# frozen_string_literal: true

require 'logger'

require 'bundler/setup'
require 'support/configs/simple_cov_config'
require 'rails'
require 'ratel'

SimpleCovConfig.configure

require File.expand_path('../spec/dummy/config/environment.rb', __dir__)
ENV['RAILS_ROOT'] ||= File.expand_path('../../spec/dummy', __dir__)

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
