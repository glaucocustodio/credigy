require_relative './authorized'
require_relative './promise_response'

module Credigy
  class Promise < Authorized
    attr_reader :params

    # * <tt>authorization_token</tt> - token de autorização
    #
    # ==== Params
    # * <tt>:accounts</tt> - um array de ids de contas. Ex: ['123', '456']
    # * <tt>:installments</tt> - numero de parcelas da promessa
    # * <tt>:first_installment_date</tt> - primeira data de vencimento
    # * <tt>:agreement_value</tt> - valor do acordo
    def initialize(authorization_token, **params)
      @authorization_token = authorization_token
      @params = params
    end

    def operation
      :generate_promise
    end

    def message
      {
        'cred:Accounts' => params[:accounts],
        'cred:TotalInstallments' => params[:installments],
        'cred:FirstInstallmentDate' => params[:first_installment_date],
        'cred:TotalAgreementAmount' => params[:agreement_value]
      }
    end
  end
end
