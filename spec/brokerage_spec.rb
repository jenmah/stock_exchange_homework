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




# should be able to have no clients
# should be able to accept clients
# should be able to purchase stocks
# should be able to sell stocks to clients
# should be able to update clients' stocks
# should be able to list all clients and their balances
# should be able to list a client's porfolios and associated values
# should be able to list all stocks in a portfolio and assoicated valyes