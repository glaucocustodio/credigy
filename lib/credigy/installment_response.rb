require_relative './response'

module Credigy
  class InstallmentNotAvailable < StandardError; end

  class InstallmentResponse < Response
    def all
      raise(InstallmentNotAvailable, body) if installment_not_available?

      body[:installments][:installment]
    end

    private

    def installment_not_available?
      body[:installments].nil?
    end
  end
end
