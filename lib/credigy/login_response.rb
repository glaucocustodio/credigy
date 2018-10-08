require_relative './response'

module Credigy
  class LoginResponse < Response
    def name
      body[:name].strip
    end

    def authorization_token
      body[:authorization_token]
    end
  end
end
