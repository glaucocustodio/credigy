RSpec.describe Credigy::EmailCreation do
  subject { described_class.new(:authorization_token, address: 'foo@bar.com') }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:save_email)
    end
  end

  describe '#message' do
    it do
      expect(subject.message).to eq({ 'cred:emailAddress' => 'foo@bar.com' })
    end
  end
end
