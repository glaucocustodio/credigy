require_relative './authorized'
require_relative './email_creation_response'

module Credigy
  class EmailCreation < Authorized
    attr_reader :address

    def initialize(authorization_token, address:)
      @authorization_token, @address = authorization_token, address
    end

    def operation
      :save_email
    end

    def message
      { 'cred:emailAddress' => address }
    end
  end
end
