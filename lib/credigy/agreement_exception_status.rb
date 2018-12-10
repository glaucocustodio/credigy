require_relative './authorized'
require_relative './agreement_exception_status_response'

module Credigy
  class AgreementExceptionStatus < Authorized
    attr_reader :agreement_id

    def initialize(authorization_token, agreement_id:)
      @authorization_token, @agreement_id = authorization_token, agreement_id
    end

    def operation
      :get_exception_status
    end

    def message
      {
        'cred:debtorAgreementID' => agreement_id
      }
    end
  end
end
