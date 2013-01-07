require "spec_helper"

describe Graphite do
  let(:client) { Graphite.new("12345", "example.com") }

  subject { Honeypot::Client.new(configuration) }

  it "measures a value" do
    client.should_receive(:send_to_socket).with("stat 123")
    client.measure("stat", 123)
  end

  it "measures a block execution time" do
    client.should_receive(:send_to_socket).with(/stat 1\d{3}/)
    client.measure "stat" do
      sleep 1
    end
  end
end
