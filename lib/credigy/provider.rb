require_relative './authorized'
require_relative './provider_response'

module Credigy
  class Provider < Authorized
    def operation
      :get_providers
    end
  end
end
