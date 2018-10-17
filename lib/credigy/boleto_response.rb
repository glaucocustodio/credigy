require_relative './response'

module Credigy
  class BoletoResponse < Response
    def pdf
      body[:boleto]
    end
  end
end
