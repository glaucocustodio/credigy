require_relative './authorized'
require_relative './legal_terms_acceptance_response'

module Credigy
  class LegalTermsAcceptance < Authorized
    def operation
      :accept_legal_terms
    end
  end
end
