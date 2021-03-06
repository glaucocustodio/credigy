RSpec.describe Credigy::Boleto do
  subject { described_class.new(:authorization_token, **params) }
  let(:params) { {} }

  describe '#operation' do
    it do
      expect(subject.operation).to eq(:get_boleto)
    end
  end

  describe '#message' do
    let(:params) do
      { debtor_agreement_id: 'debtor_agreement_id', installment_number: 'installment_number' }
    end

    it do
      expect(subject.message).to eq(
        'cred:debtorAgreementID' => 'debtor_agreement_id',
        'cred:installmentNumber' => 'installment_number'
      )
    end
  end
end
