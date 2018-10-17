RSpec.describe Credigy::LoginResponse do
  subject { described_class.new(:raw_response, :requester) }

  before do
    allow(subject).to receive(:body).and_return(body)
  end

  describe '#name' do
    let(:body) { { name: ' josé ' } }

    it do
      expect(subject.name).to eq('josé')
    end
  end

  describe '#authorization_token' do
    context 'token generated' do
      let(:body) { { authorization_token: 'token' } }

      it do
        expect(subject.authorization_token).to eq('token')
      end
    end

    context 'token was not generated' do
      let(:body) { { authorization_token: nil } }
      let(:raw_response) { double(:raw_response, body: 'whatever') }

      it do
        expect(subject).to receive(:raw_response).and_return(raw_response)
        expect { subject.authorization_token }.to raise_error('Token não gerado: whatever')
      end
    end
  end
end
