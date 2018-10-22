RSpec.describe Credigy::InstallmentResponse do
  subject { described_class.new(:_, :_) }

  describe '#all' do
    let(:body) { { installments: { installment: 'whatever' } } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.all).to eq('whatever')
    end
  end
end
