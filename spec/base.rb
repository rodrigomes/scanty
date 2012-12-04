require 'rubygems'
require 'spec'
require 'sequel'

Sequel.postgres('rdrblog', :user=>'bacatuba',
 :password=>'123456',:host=>'localhost',
 :port=>5432, :max_connections=>10)

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')
require 'post'

require 'ostruct'
Blog = OpenStruct.new(
	:title => 'My blog',
	:author => 'Anonymous Coward',
	:url_base => 'http://blog.example.com/'
)
