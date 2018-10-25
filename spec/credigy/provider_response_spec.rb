RSpec.describe Credigy::ProviderResponse do
  subject { described_class.new(:raw_response, :requester) }

  describe '#all' do
    before do
      expect(subject).to receive(:body).and_return(body)
    end

    context 'body returns an array' do
      let(:body) { { providers: { provider: [ { foo: 'bar' } ] } } }

      it do
        expect(subject.all).to eq([ foo: 'bar' ])
      end
    end

    context 'body does not return an array' do
      let(:body) { { providers: { provider: { foo: 'bar' } } } }

      it do
        expect(subject.all).to eq([ { foo: 'bar' } ])
      end
    end
  end
end
