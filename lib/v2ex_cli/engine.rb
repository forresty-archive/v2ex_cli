require "cgi"
require "eggroll"

module V2exCli
  class Engine < Eggroll::Engine
    default_endpoint 'http://www.v2ex.com/api'

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

    def user_info(username)
      get "/members/show.json?username=#{username}"
    end

    def nodes
      get '/nodes/all.json'
    end
  end
end
