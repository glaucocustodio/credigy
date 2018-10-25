require_relative './response'

module Credigy
  class BoletoNotAvailable < StandardError; end

  class BoletoResponse < Response
    def pdf
      raise(BoletoNotAvailable, body) if boleto_not_available?

      Base64.decode64(body[:boleto])
    end

    def sub_root_key
      :ws_result_boleto
    end

    private

    def boleto_not_available?
      body[:boleto].nil?
    end
  end
end
