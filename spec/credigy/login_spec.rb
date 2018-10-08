RSpec.describe Credigy::Login do
  subject { described_class.new(user: 'user', password: 'password', cpf: 'cpf') }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:login)
    end
  end

  describe '#soap_header' do
    it do
      expect(subject.soap_header).to eq({
        'cred:AuthenticationLogin' => { 'cred:Username' => 'user', 'cred:Password' => 'password' }
      })
    end
  end

  describe '#message' do
    it do
      expect(subject.message).to eq('debtorNumber' => 'cpf')
    end
  end
end
