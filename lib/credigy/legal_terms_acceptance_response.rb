require_relative './response'

module Credigy
  class LegalTermsAcceptanceResponse < Response
    def debtor_agreement_id
      body[:debtor_agreement_id]
    end

    def invoice_number
      body[:invoice_number]
    end

    def sub_root_key
      :negotiation_result
    end
  end
end
