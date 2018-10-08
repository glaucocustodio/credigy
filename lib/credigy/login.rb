require_relative './request'
require_relative './login_response'

module Credigy
  class Login < Request
    attr_reader :user, :password, :cpf

    def initialize(user:, password:, cpf:)
      @user, @password, @cpf = user, password, cpf
    end

    def operation
      :login
    end

    def soap_header
      {
        'cred:AuthenticationLogin' => { 'cred:Username' => user, 'cred:Password' => password }
      }
    end

    def message
      { 'debtorNumber' => cpf }
    end
  end
end
