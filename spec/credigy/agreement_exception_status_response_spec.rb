RSpec.describe Credigy::AgreementExceptionStatusResponse do
  subject { described_class.new(:_, :_) }

  describe '#exception_id' do
    let(:body) { { exception_id: 'exception_id' } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.exception_id).to eq('exception_id')
    end
  end

  describe '#status' do
    let(:body) { { status: 'status' } }

    it do
      expect(subject).to receive(:body).and_return(body)
      expect(subject.status).to eq('status')
    end
  end
end
