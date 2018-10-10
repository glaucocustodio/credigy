require_relative './response'

module Credigy
  class CampaignNegotiationResponse < Response
    def all
      Array(body[:campaign_negotiations][:campaign_negotiation])
    end
  end
end
