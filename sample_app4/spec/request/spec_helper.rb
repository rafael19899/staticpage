require 'rubygems'
require 'spork'
Spork.prefork do
# Loading more in this block will cause your tests to run faster. However,
# if you change any configuration or code from libraries loaded here, you'll
# need to restart spork for it take effect.
# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS ENV"] ||= 'test'
require File.expand path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
RSpec.configure do |config|
# == Mock Framework
#
# If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
#
# config.mock with :mocha
# config.mock with :flexmock
# config.mock with :rr
config.mock with :rspec
# Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
config.fixture path = "#{::Rails.root}/spec/fixtures"
# If you're not using ActiveRecord, or you'd prefer not to run each of your
# examples within a transaction, remove the following line or assign false
# instead of true.
config.use transactional fixtures = true
# If true, the base class of anonymous controllers will be inferred
# automatically. This will be the default behavior in future versions of
# rspec-rails.
config.infer base class for anonymous controllers = false
end
end
Spork.each run do
# This code will be run each time you run your specs.
end
