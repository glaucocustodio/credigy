require_relative './response'

module Credigy
  class AgreementExceptionStatusResponse < Response
    def exception_id
      body[:exception_id]
    end

    def status
      body[:status]
    end
  end
end
