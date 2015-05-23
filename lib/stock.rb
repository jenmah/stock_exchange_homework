class Stock

  attr_accessor :stock_name, :num_of_shares, :share_price

  def initialize(options = {})
    @stock_name = options[:stock_name]
    @num_of_shares = options[:num_of_shares]
    @share_price = options[:share_price]
  end

  # def list_balances
  #   puts "These are our clients and their respective balances:"
  #   clients.each { |client| puts client.name }
  # end

end


