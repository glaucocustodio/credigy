require_relative './response'

module Credigy
  class CampaignNegotiationResponse < Response
    def all
      Array.wrap(body[:campaign_negotiations][:campaign_negotiation])
    end
  end
end
