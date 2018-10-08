require_relative './response'

module Credigy
  class ProviderResponse < Response
    def all
      Array(body[:providers][:provider])
    end
  end
end
