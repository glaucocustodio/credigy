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
      raw_response.body[root_key][sub_root_key]
    end

    def root_key
      "#{requester.operation}_response".to_sym
    end

    def sub_root_key
      "#{requester.operation}_result".to_sym
    end
  end
end
