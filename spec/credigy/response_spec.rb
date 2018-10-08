RSpec.describe Credigy::Response do
  subject { described_class.new(raw_response, requester) }

  describe "#body" do
    let(:raw_response) do
      double(:raw_response, body: { create_response: { create_result: "whatever" }})
    end
    let(:requester) { double(:requester, operation: :create) }

    it do
      expect(subject.body).to eq("whatever")
    end
  end
end
