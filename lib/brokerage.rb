class Brokerage

  attr_accessor :clients, :stocks

  def initialize(options = {})
    @clients = []
    @stocks = []
  end

  def self.client_count
    self.clients.count
  end

  def accept_new_client(client)
    @clients << client
  end

  def list_clients
    puts "These are our clients and their respective balances:"
    clients.each { |client| puts "#{client.name} has " "$#{client.account_balance} in their account." }
  end


  # def create_client
  #   puts "What is the client's name? \n"
  #   name = gets.chomp
  #   puts "What is their account balance? \n"
  #   account_balance = gets.chomp.to_i
  #   puts "What portfolios does the client have? \n"
  #   portfolios = gets.chomp
  #   client = Client.new({name: name, account_balance: account_balance, portfolios: portfolios})
  #   big_brokerage.clients << client
  #   puts "#{name} is now in the system. Thanks!"
  # end


  def list_portfolios
    puts "These are our clients' portfolios and their associated values:"
    clients.each { |client| puts "#{client.name} has " "#{client.portfolios} portfolios, valued at ." }
  end


end
