class Portfolio

  attr_accessor :clients

  def initialize(options = {})
    @portfolio_names = options[:portfolio_name]
    @portfolio_stocks = options[:portfolio_stocks]
  end

end
