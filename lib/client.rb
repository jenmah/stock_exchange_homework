class Client

  attr_accessor :name, :account_balance, :portfolios

  def initialize(options = {})
    @name = options[:name]
    @account_balance = options[:account_balance]
    @portfolios = options[:portfolios] || []
  end


  def create_client
    puts "What is the client's name? \n"
    name = gets.chomp
    puts "What is their account balance? \n"
    account_balance = gets.chomp.to_i
    puts "What portfolios does the client have? \n"
    portfolios = gets.chomp
    client = Client.new({name: name, account_balance: account_balance, portfolios: portfolios})
    big_brokerage.clients << client
    puts "#{name} is now in the system. Thanks!"
  end


end


