require "simplecov"
SimpleCov.start do
  add_filter 'spec'
end

require "v2ex_cli"

require "open-uri"

def fixture(filename)
  V2exCli::Engine.new.dehydrate(raw_fixture(filename))
end

def raw_fixture(filename)
  open("spec/fixtures/#{filename}") { |file| file.read }
end
