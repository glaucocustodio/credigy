RSpec.describe Credigy::Account do
  subject { described_class.new(:authorization_token) }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:get_accounts)
    end
  end
end
