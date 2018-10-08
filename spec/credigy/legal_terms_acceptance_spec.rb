RSpec.describe Credigy::LegalTermsAcceptance do
  subject { described_class.new(:authorization_token) }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:accept_legal_terms)
    end
  end
end
