require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require_relative '../../config/environment'

require 'capybara'
require 'capybara/cucumber'
require 'capybara/rails'

Capybara.app = Issue42::Application
