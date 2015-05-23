require_relative 'spec_helper'

describe Client do

  let(:client) {Client.new(name: 'Bob', account_balance: 750000, portfolios: ['tech portfolio', 'bank portfolio', 'energy_portfolio'])}

  it "- should be able to create a new client" do
    expect(client.name).to eq 'Bob'
    expect(client.account_balance).to eq 750000
  end


end