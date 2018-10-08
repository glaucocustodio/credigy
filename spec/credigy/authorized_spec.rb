RSpec.describe Credigy::Authorized do
  subject { described_class.new(:authorization_token) }

  describe '#soap_header' do
    it do
      expect(subject.soap_header).to eq({
        'cred:AuthenticationToken' => { 'cred:Token' => :authorization_token }
      })
    end
  end
end
