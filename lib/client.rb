class Client

  attr_accessor :clients, :balance, :portfolios

  def initialize(options = {})
    @name = options[:name]
    @account_balance = options[:account_balance]
    @portfolios = options[:portfolios] || []
  end

end


# bob = Client.new({name: 'Bob', account_balance: 750000, portfolios: {tech_portfolio: 'AAPL', 'GOOG', 'AMZN'}, {bank_portfolio: 'US Bank', 'TD Bank'}, {energy_portfolio: 'GE', 'SolarWinds', 'GreenEnergie'}})

# bob = Client.new({name: 'Bob', account_balance: 750000, portfolios: ['tech portfolio', 'bank portfolio', 'energy_portfolio']})
