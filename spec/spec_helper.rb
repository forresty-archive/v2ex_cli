require "simplecov"
SimpleCov.start

require "v2ex_cli"

require "open-uri"

def fixture(filename)
  JSON(raw_fixture(filename)).recursively_symbolize_keys
end

def raw_fixture(filename)
  open("spec/fixtures/#{filename}") { |file| file.read }
end
