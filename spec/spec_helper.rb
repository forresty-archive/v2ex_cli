require "simplecov"
SimpleCov.start

Dir['./lib/v2ex_cli/**/*.rb'].each { |file| require file }
