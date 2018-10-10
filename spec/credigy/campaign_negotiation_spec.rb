RSpec.describe Credigy::CampaignNegotiation do
  subject { described_class.new(authorization_token, **params) }
  let(:authorization_token) { double(:authorization_token) }

  describe '#operation' do
    let(:params) { {} }

    it do
      expect(subject.operation).to eq(:get_campaign_negotiation)
    end
  end

  describe '#message' do
    let(:params) { { owner_id: 'owner_id', accounts: 1, provider_ids: [3, 4] } }

    it do
      expect(subject.message).to eq({
        'cred:Ownerid' => 'owner_id',
        'cred:Accounts' => [1],
        'cred:Providers' => [3, 4]
      })
    end
  end
end
