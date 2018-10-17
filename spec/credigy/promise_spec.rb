RSpec.describe Credigy::Promise do
  subject { described_class.new(:authorization_token, params) }

  describe '#operation' do
    let(:params) { { whatever: true } }

    it do
      expect(subject.operation).to eq(:generate_promise)
    end
  end

  describe '#message' do
    let(:params) do
      {
        accounts: ['123', '456'],
        installments: 'installments',
        first_installment_date: Date.today,
        agreement_value: 1500.95
      }
    end

    it do
      expect(subject.message).to eq({
        'cred:Accounts' => '123;456',
        'cred:TotalInstallments' => 'installments',
        'cred:FirstInstallmentDate' => Date.today,
        'cred:TotalAgreementAmount' => 1500.95
      })
    end
  end
end
