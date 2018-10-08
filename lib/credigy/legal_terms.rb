require_relative './authorized'
require_relative './legal_terms_response'

module Credigy
  class LegalTerms < Authorized
    def operation
      :accept_legal_terms
    end
  end
end
