require_relative './authorized'
require_relative './line_response'

module Credigy
  class Line < Authorized
    attr_reader :params

    def initialize(authorization_token, **params)
      @authorization_token = authorization_token
      @params = params
    end

    def operation
      :get_linha_digitavel
    end

    def message
      {
        'cred:debtorAgreementID' => params[:debtor_agreement_id],
        'cred:installmentNumber' => params[:installment_number]
      }
    end
  end
end
