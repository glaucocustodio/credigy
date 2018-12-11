RSpec.describe Credigy::AgreementExceptionStatus do
  subject { described_class.new(:authorization_token, agreement_id: 123) }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:get_exception_status)
    end
  end

  describe '#message' do
    it do
      expect(subject.message).to eq({ 'cred:debtorAgreementID' => 123 })
    end
  end
end
