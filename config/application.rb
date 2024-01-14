require 'bundler'
Bundler.require

require 'sinatra'
require 'sinatra/base'
require 'yaml'

config_path = File.join(__dir__, 'database.yml')
ActiveRecord::Base.configurations = YAML.load_file(config_path)
ActiveRecord::Base.establish_connection(:development)

require File.expand_path(File.join('app', 'helpers', 'application_helper.rb'))
require File.expand_path(File.join('app', 'controllers', 'application_controller.rb'))

Dir[File.join('app','helpers', '**/*._helper.rb')].each { |file| require File.expand_path(file) }
Dir[File.join('app', 'controllers', '**/*_controller.rb')].each { |file| require File.expand_path(file) }
Dir[File.join('app', 'models', '**/*.rb')].each { |file| require File.expand_path(file) }