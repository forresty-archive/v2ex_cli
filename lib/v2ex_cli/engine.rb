require "open-uri"
require "json"

module V2exCli
  module Engine
    class << self
      def latest
        get '/topics/latest.json'
      end

      private
      def api_endpoint
        'http://www.v2ex.com/api'
      end

      def get_raw(path)
        open("#{api_endpoint}#{path}") { |f| f.read }
      end

      def get(path)
        JSON(get_raw(path)).recursively_symbolize_keys
      end
    end
  end
end