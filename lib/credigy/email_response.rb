require_relative './response'

module Credigy
  class EmailResponse < Response
    def all
      Array.wrap(body[:emails][:email])
    end
  end
end
