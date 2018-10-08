require_relative './response'

module Credigy
  class ProviderResponse < Response
    def all
      Array.wrap(body[:providers][:provider])
    end
  end
end
