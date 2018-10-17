require_relative './response'

module Credigy
  class LoginResponse < Response
    def name
      body[:name].strip
    end

    def authorization_token
      return body[:authorization_token] if body[:authorization_token]

      raise "Token não gerado: #{raw_response.body}"
    end
  end
end
