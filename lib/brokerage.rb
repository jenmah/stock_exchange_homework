class Brokerage

  attr_accessor :clients

  def initialize(options = {})
    @clients = options[:clients] || []
  end

  def new_client
    client = Client.new({name: name, account_balance: account_balance, portfolios: portfolios})
    big_brokerage.clients << client
  end

end
