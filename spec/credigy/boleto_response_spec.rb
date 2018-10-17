RSpec.describe Credigy::BoletoResponse do
  subject { described_class.new(:_, :_) }

  describe '#pdf' do
    let(:body) { { boleto: 'pdf' } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.pdf).to eq('pdf')
    end
  end
end
