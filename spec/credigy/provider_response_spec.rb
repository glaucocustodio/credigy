RSpec.describe Credigy::ProviderResponse do
  subject { described_class.new(:raw_response, :requester) }

  describe '#all' do
    let(:body) { { providers: { provider: :whatever } } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.all).to eq([:whatever])
    end
  end
end
