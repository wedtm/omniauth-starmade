require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Starmade < OmniAuth::Strategies::OAuth
      # change the class name and the :name option to match your application name
      option :name, :starmade

      option :client_options, {
        :site => "http://sm-registry.herokuapp.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"]
          # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
