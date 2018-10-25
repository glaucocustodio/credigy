RSpec.describe Credigy::InstallmentResponse do
  subject { described_class.new(:_, :_) }

  describe '#all' do
    before do
      allow(subject).to receive(:body).and_return(body)
    end

    context 'installments available' do
      let(:body) { { installments: { installment: 'whatever' } } }

      it do
        expect(subject.all).to eq('whatever')
      end
    end

    context 'installments not available' do
      let(:body) { { foo: 'bar' } }

      it do
        expect { subject.all }.to raise_error(Credigy::InstallmentNotAvailable)
      end
    end
  end
end
