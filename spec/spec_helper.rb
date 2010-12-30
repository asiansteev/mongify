require 'rubygems'
require 'yaml'
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'mongify'
require 'mongify/cli'

begin
  require 'bundler'
  Bundler.setup
rescue LoadError
  puts "Need to install bundler 1.0. 'gem install bundler'"
end

require 'rspec/core'

Dir['./spec/support/**/*.rb'].map {|f| require f}

::CONNECTION_CONFIG = ConfigReader.new(File.dirname(File.expand_path(__FILE__)) + '/support/database.yml')

