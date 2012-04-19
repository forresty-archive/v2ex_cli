require "simplecov"
SimpleCov.start do
  add_filter 'spec'
end

require "v2ex_cli"

require "open-uri"

def fixture(filename)
  V2exCli::Engine.jsonize(raw_fixture(filename)).recursively_symbolize_keys
end

def raw_fixture(filename)
  open("spec/fixtures/#{filename}") { |file| file.read }
end
