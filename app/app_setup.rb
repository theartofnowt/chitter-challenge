require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-validations'
require 'dm-timestamps'
require 'sinatra/base'
require 'date'

require_relative 'models/peep.rb'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_challenge_#{ENV['RACK_ENV']}")
DataMapper.finalize
