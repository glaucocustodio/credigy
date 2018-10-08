RSpec.describe Credigy::Provider do
  subject { described_class.new(:authorization_token) }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:get_providers)
    end
  end
end
