require_relative 'spec_helper.rb'

describe Brokerage do

  let(:brokerage) { Brokerage.new }
  let(:client) { Client.new }

  it "- should be able to accept clients" do
    client = Client.new
    brokerage = Brokerage.new
    
    expect(Brokerage.client_count).to eq 0
    brokerage.accept_new_client(client)
    expect(Brokerage.client_count).to eq 1
  end

end 
