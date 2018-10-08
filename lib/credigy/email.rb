require_relative './authorized'
require_relative './email_response'

module Credigy
  class Email < Authorized
    def operation
      :get_emails
    end
  end
end
