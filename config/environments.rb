ENV['SINATRA_ENV'] ||= "development"
ENV['RACK_ENV'] ||= "development"

require 'sequel'
DB = Sequel.connect('postgres://root:password@127.0.0.1:5432/postgres')

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'require_all'
require_all 'app'
