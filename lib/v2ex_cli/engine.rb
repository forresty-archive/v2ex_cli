require "open-uri"
require "json"
require "cgi"

module V2exCli
  module Engine
    class << self
      def latest
        get '/topics/latest.json'
      end

      def topic(topic_id)
        get "/topics/show.json?id=#{topic_id}"
      end

      def replies(topic_id)
        get "/replies/show.json?topic_id=#{topic_id}"
      end

      def user_topics(username)
        get "/topics/show.json?username=#{username}"
      end

      def node_topics(node_name)
        get "/topics/show.json?node_name=#{node_name}"
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