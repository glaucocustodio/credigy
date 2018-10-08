module Credigy
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :verbose, :env
    attr_writer :wsdl

    def initialize
      @verbose = false
      @env = :dev
    end

    def production_env?
      env == :production
    end

    def wsdl
      return @wsdl if @wsdl

      if production_env?
        'https://www.credigy.com.br/CredigyWSP/CredigyAgenciesWSS.asmx?WSDL'.freeze
      else
        'https://www.credigy.com.br/CredigyWST/CredigyAgenciesWSS.asmx?WSDL'.freeze
      end
    end
  end
end
