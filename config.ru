require 'rubygems'
require 'sinatra'

Sinatra::Base.set(
  :views => File.join(File.dirname(__FILE__), 'views'),
  :run => false,
  :env => ENV['RACK_ENV']
)

require "./main"
run Sinatra::Application