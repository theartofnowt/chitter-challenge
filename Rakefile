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
     DataMapper.auto_upgrade!
     puts "Database upgraded!"
   end

   desc "descructive upgrade"
   task :migrate do
     DataMapper.auto_migrate!
     puts "Database migrated!"
   end
