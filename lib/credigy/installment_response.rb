require_relative './response'

module Credigy
  class InstallmentResponse < Response
    def all
      body[:installments][:installment]
    end
  end
end
