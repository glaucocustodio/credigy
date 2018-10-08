require_relative './request'

module Credigy
  class Authorized < Request
    attr_reader :authorization_token

    def initialize(authorization_token)
      @authorization_token = authorization_token
    end

    def soap_header
      { 'cred:AuthenticationToken' => { 'cred:Token' => authorization_token } }
    end
  end
end
