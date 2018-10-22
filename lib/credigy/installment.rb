require_relative './authorized'
require_relative './installment_response'

module Credigy
  class Installment < Authorized
    attr_reader :debtor_agreement_id

    def initialize(authorization_token, debtor_agreement_id:)
      @authorization_token = authorization_token
      @debtor_agreement_id = debtor_agreement_id
    end

    def operation
      :get_installments
    end

    def message
      { 'cred:debtoragreementid' => debtor_agreement_id }
    end
  end
end
