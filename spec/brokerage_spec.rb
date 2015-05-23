require_relative 'spec_helper.rb'

describe Brokerage do

  let(:brokerage) { Brokerage.new(clients: []) }

  it "- should be able to accept clients" do
    expect(Brokerage.clients).to eq []
  end

end 
