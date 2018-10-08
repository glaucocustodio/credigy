RSpec.describe Credigy::LoginResponse do
  subject { described_class.new(:raw_response, :requester) }

  before do
    expect(subject).to receive(:body).and_return(body)
  end

  describe '#name' do
    let(:body) { { name: ' josé ' } }

    it do
      expect(subject.name).to eq('josé')
    end
  end

  describe '#authorization_token' do
    let(:body) { { authorization_token: 'token' } }

    it do
      expect(subject.authorization_token).to eq('token')
    end
  end
end
