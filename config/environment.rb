require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here
# DB = {:conn => SQLite3::Database.new("db/artists.db")}

# DB = ActiveRecord::Base.establish_connection(
#       :adapter => "sqlite3",
#       :database => "../db/artists"
#     )
#
#   DB = ActiveRecord::Base.connection
  #
  # if ENV["ACTIVE_RECORD_ENV"] == "test"
  #   ActiveRecord::Migration.verbose = false
  # end
connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
# sql = <<-SQL
#   CREATE TABLE IF NOT EXISTS artists (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   genre TEXT,
#   age INTEGER,
#   hometown TEXT
#   )
# SQL
#
# ActiveRecord::Base.connection.execute(sql)

require_relative "../artist.rb"
