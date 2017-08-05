require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-timestamps'

class Peep
   include DataMapper::Resource


   property :id,   Serial
   property :body, Text
   property :created_at, DateTime
end
