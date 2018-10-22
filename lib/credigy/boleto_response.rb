require_relative './response'

module Credigy
  class BoletoResponse < Response
    def pdf
      body[:boleto]
    end

    def sub_root_key
      :ws_result_boleto
    end
  end
end
