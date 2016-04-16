$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rspec'
require 'omniauth'
require 'omniauth-coding'

RSpec.configure do |config|
  config.expect_with(:rspec) {|c| c.syntax = :should}
end
