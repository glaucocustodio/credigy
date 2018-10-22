require_relative './authorized'
require_relative './boleto_response'

module Credigy
  class Boleto < Authorized
    attr_reader :params

    def initialize(authorization_token, **params)
      @authorization_token = authorization_token
      @params = params
    end

    def operation
      :get_boleto
    end

    def message
      {
        'cred:debtorAgreementID' => params[:debtor_agreement_id],
        'cred:installmentNumber' => params[:installment_number]
      }
    end
  end
end
