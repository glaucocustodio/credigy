RSpec.describe Credigy::LegalTermsAcceptanceResponse do
  subject { described_class.new(:_, :_) }

  describe '#debtor_agreement_id' do
    let(:body) { { debtor_agreement_id: 'debtor_agreement_id' } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.debtor_agreement_id).to eq('debtor_agreement_id')
    end
  end

  describe '#invoice_number' do
    let(:body) { { invoice_number: 'invoice_number' } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.invoice_number).to eq('invoice_number')
    end
  end

  describe '#sub_root_key' do
    it do
      expect(subject.sub_root_key).to eq(:negotiation_result)
    end
  end
end
