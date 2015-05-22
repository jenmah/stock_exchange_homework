require_relative 'spec_helper'

describe Brokerage do

  let(:brokerage) { Brokerage.new }

  it "- should be able to have no clients" do
    expect(Brokerage.clients).to eq []
  end

end
