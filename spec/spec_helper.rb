ENV['RACK_ENV'] = 'test'

require 'simplecov'
require 'simplecov-console'
require 'simplecov'
require 'database_cleaner'
require 'capybara/rspec'
require 'data_mapper'#
require 'dm-postgres-adapter'#
require_relative '../app/app'#
require './spec/features/helpers.rb'#

Capybara.app = Chitter

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,])

SimpleCov.start

# DataMapper.auto_upgrade!
DataMapper.auto_migrate!

RSpec.configure do |config|

   config.before(:suite) do

    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)

   end

   config.before(:each) do

     DatabaseCleaner.start

   end

   config.after(:each) do

     DatabaseCleaner.clean

   end

   config.after(:suite) do

  end
end
