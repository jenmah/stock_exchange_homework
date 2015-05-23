class Client

  attr_accessor :name, :account_balance, :portfolios

  def initialize(options = {})
    @name = options[:name]
    @account_balance = options[:account_balance]
    @portfolios = options[:portfolios] || []
  end

  # def list_balances
  #   puts "These are our clients and their respective balances:"
  #   clients.each { |client| puts client.name }
  # end

end


