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
        'cred:Accounts' => Array(params[:accounts]),
        'cred:Providers' => Array(params[:provider_ids])
      }
    end
  end
end
