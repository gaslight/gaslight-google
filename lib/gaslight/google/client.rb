require 'faraday'
require 'json'

module Gaslight
  module Google
    class Client
      def initialize(env = ENV)
        url = env.fetch('API_URL', 'http://localhost:3000/api')

        @client = Faraday.new(url: url) do |faraday|
          faraday.adapter  Faraday.default_adapter
          faraday.headers  = { 'Content-Type' => 'application/json' }
        end

        get_available_links(url)
        self
      end

      def available_links
        @links.reduce(Hash.new) { |hsh, (key, values)|
          values.each do |link|
            hsh["#{key}.#{link['rel']}"] = link['href']
          end
          hsh
        }
      end

      def link_for(resource)
        available_links[resource]
      end

      def get(url)
        response = @client.get { |req|
          req.url url
        }
        parse_response(response)
      end

      private

      def parse_response(response)
        JSON.parse(response.body)
      end

      def get_available_links(url)
        response = get(url)
        @links = response['links']
      end
    end
  end
end
