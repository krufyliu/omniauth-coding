require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Coding < ::OmniAuth::Strategies::OAuth2
      option :name, :coding
      option :client_options, {
        site: 'https://coding.net',
        authorize_url: 'https://coding.net/oauth_authorize.html',
        token_url: 'https://coding.net/api/oauth/access_token'
      }
      option :token_params, { parse: :json }

      uid { raw_info['id'].to_s }

      info do
        {
          nickname: raw_info['name'],
          email: email,
          sex: raw_info['sex'],
          name: raw_info['global_key'],
          avatar: raw_info['gravatar']
        }
      end

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        access_token.options[:mode] = :query
        @email ||= access_token.get('api/account/email').parsed['data']
        @raw_info ||= access_token.get('api/current_user').parsed['data']
      end

      def email
        @email
      end

    end
  end
end

OmniAuth.config.add_camelization 'coding', 'Coding'