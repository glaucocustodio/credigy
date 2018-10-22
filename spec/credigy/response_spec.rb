RSpec.describe Credigy::Response do
  subject { described_class.new(raw_response, requester) }
  let(:raw_response) { double(:raw_response) }
  let(:requester) { double(:requester) }

  describe "#body" do
    let(:raw_response) do
      double(:raw_response, body: { create_response: { create_result: "whatever" }})
    end

    it do
      expect(subject).to(
        receive_messages(root_key: :create_response, sub_root_key: :create_result)
      )
      expect(subject.body).to eq("whatever")
    end
  end

  describe '#root_key' do
    let(:requester) { double(:requester, operation: :create) }

    it do
      expect(subject).to receive(:requester).and_return(requester)
      expect(subject.root_key).to eq(:create_response)
    end
  end

  describe '#sub_root_key' do
    let(:requester) { double(:requester, operation: :create) }

    it do
      expect(subject).to receive(:requester).and_return(requester)
      expect(subject.sub_root_key).to eq(:create_result)
    end
  end
end
