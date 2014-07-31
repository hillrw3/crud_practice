require_relative '../app'
require 'capybara/rspec'
ENV["RACK_ENV"] = "test"


Capybara.app = App

RSpec.configure do |config|
  config.order = :random
end