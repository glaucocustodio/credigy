RSpec.describe Credigy::AccountResponse do
  subject { described_class.new(:raw_response, :requester) }

  describe '#all' do
    let(:body) { { accounts: { account: [:whatever] } } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.all).to eq([:whatever])
    end
  end
end
