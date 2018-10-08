require_relative './response'

module Credigy
  class EmailResponse < Response
    def all
      Array(body[:emails][:email])
    end
  end
end
