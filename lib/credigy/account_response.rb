require_relative './response'

module Credigy
  class AccountResponse < Response
    def all
      Array.wrap(body.dig(:accounts, :account))
    end
  end
end
