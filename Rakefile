if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]
end


require 'data_mapper'
require './app/app.rb'

   task default: %w[upgrade]

   desc "non descructive upgrade"
   task :upgrade do
     DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_challenge_#{ENV['database']}")
     DataMapper.auto_upgrade!
     puts "Database upgraded!"
   end

   desc "descructive upgrade"
   task :migrate do
     DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_challenge_#{ENV['database']}")
     DataMapper.auto_migrate!
     puts "Database migrated!"
   end
