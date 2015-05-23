class Brokerage

  attr_accessor :clients

  def initialize(options = {})
    @clients = []
  end

  def client_count
    @clients.count
  end

  def accept_new_client(client)
    @clients << client
  end

  def list_clients
    puts "These are our clients and their respective balances:"
    clients.each { |client| puts "#{client.name} has " "$#{client.account_balance} in their account." }
    # clients.each { |client| puts client.account_balance }
  end

end
