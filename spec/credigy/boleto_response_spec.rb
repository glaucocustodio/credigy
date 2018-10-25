RSpec.describe Credigy::BoletoResponse do
  subject { described_class.new(:_, :_) }

  describe '#pdf' do
    before do
      allow(subject).to receive(:body).and_return(body)
    end

    context 'boleto available' do
      let(:body) { { boleto: 'pdf' } }

      it do
        expect(Base64).to receive(:decode64).with('pdf').and_return('pdf')
        expect(subject.pdf).to eq('pdf')
      end
    end

    context 'boleto not available' do
      let(:body) { { foo: 'bar' } }

      it do
        expect { subject.pdf }.to raise_error(Credigy::BoletoNotAvailable)
      end
    end
  end

  describe '#sub_root_key' do
    it do
      expect(subject.sub_root_key).to eq(:ws_result_boleto)
    end
  end
end
