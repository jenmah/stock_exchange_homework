class Stock

  attr_accessor :name, :num_of_shares, :share_price

  def initialize(options = {})
    @name = options[:name]
    @num_of_shares = options[:num_of_shares]
    @share_price = options[:share_price]
  end

end


