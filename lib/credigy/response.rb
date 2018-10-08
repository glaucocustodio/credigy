module Credigy
  class Response
    extend Forwardable
    def_delegator :raw_response, :success?

    attr_reader :raw_response, :requester

    def initialize(raw_response, requester)
      @raw_response = raw_response
      @requester = requester
    end

    def body
      raw_response
        .body["#{requester.operation}_response".to_sym]["#{requester.operation}_result".to_sym]
    end
  end
end
