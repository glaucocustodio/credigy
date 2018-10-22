RSpec.describe Credigy::Installment do
  subject { described_class.new(:_, debtor_agreement_id: 'debtor_agreement_id') }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:get_installments)
    end
  end

  describe '#message' do
    it do
      expect(subject.message).to eq('cred:debtoragreementid' => 'debtor_agreement_id')
    end
  end
end
