require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require

#THIS IS THE FIRST THING TO DO BEFORE CREATING MIGRATIONS
# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
) #DATABASE CONNECTION ESTABLISHED

require_relative "../artist.rb" #ARTIST.RB FILE READ

# FIRST REQUIRE NECESSARY GEMS
#SECOND SET UP Bundler
# THIRD ESTABLISH DATABASE CONNECTION
#FOURTH require_relative THE FILE TO BE READ 
#time to run rake db:migrate
#THEN MOVE ON TO THE DB/MIGRATE...FILE