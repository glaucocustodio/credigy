RSpec.describe Credigy::LineResponse do
  subject { described_class.new(:_, :_) }

  describe '#line' do
    let(:body) { { linha_digitavel: 'linha_digitavel' } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.line).to eq('linha_digitavel')
    end
  end

  describe '#sub_root_key' do
    it do
      expect(subject.sub_root_key).to eq(:ws_result_linha_digitavel)
    end
  end
end
