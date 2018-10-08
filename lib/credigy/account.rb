require_relative './authorized'
require_relative './account_response'

module Credigy
  class Account < Authorized
    def operation
      :get_accounts
    end
  end
end
