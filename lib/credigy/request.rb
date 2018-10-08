require 'savon'

module Credigy
  class Request
    def call
      response_class.new(response, self).tap do |response|
        raise "Falha ao chamar operação #{operation}: #{response.body}" unless response.success?
      end
    end

    def response_class
      "#{self.class}Response".constantize
    end

    def response
      client.call(operation, message: message)
    end

    def client
      @client ||= Savon.client(config_options)
    end

    def operation
      raise NotImplementedError
    end

    def message
      {}
    end

    def config_options
      basic_config.merge(extra_config_options)
    end

    def basic_config
      { wsdl: wsdl, log: Credigy.configuration.verbose }
    end

    def extra_config_options
      { soap_header: soap_header, env_namespace: :soapenv, namespace_identifier: :cred }
    end

    def soap_header
      {}
    end

    def wsdl
      Credigy.configuration.wsdl
    end
  end
end
