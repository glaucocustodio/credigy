require_relative './authorized'
require_relative './campaign_negotiation_response'

module Credigy
  class CampaignNegotiation < Authorized
    attr_reader :params

    def initialize(authorization_token, **params)
      @authorization_token, @params = authorization_token, params
    end

    def operation
      :get_campaign_negotiation
    end

    def message
      {
        'cred:Ownerid' => params[:owner_id],
        'cred:Accounts' => Array.wrap(params[:accounts]).join(';'),
        'cred:Providers' => Array.wrap(params[:provider_ids]).join(';')
      }
    end
  end
end
