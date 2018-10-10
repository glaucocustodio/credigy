RSpec.describe Credigy::CampaignNegotiationResponse do
  subject { described_class.new(:_, :_) }

  describe '#all' do
    before do
      expect(subject).to receive(:body).and_return(body)
    end

    context 'body returns an array' do
      let(:body) { { campaign_negotiations: { campaign_negotiation: [:whatever] } } }

      it do
        expect(subject.all).to eq([:whatever])
      end
    end

    context 'body does not return an array' do
      let(:body) { { campaign_negotiations: { campaign_negotiation: :whatever } } }

      it do
        expect(subject.all).to eq([:whatever])
      end
    end
  end
end
