require 'pry'

require_relative '../lib/brokerage'
require_relative '../lib/client'
require_relative '../lib/portfolio'
require_relative '../lib/stock'

big_brokerage = Brokerage.new

client_one = Client.new(name: 'Bob', account_balance: 750000, portfolios: ['tech portfolio', 'bank portfolio', 'energy_portfolio'])

stock_one = Stock.new(stock_name: 'TDD', num_of_shares: '70', share_price: 50)


def menu
  puts `clear`
  puts '*** GASE ***'
  puts '1 - Create a client'
  puts '2 - Create a portfolio'
  puts '3 - Purchase Stocks'
  puts '4 - Sell Stocks'
  puts '5 - List all clients and their balances'
  puts "6 - List a client's portfolios and associated values"
  puts "7 - List all stocks in a portfolio and associated values"
  puts 'q - Quit program'
  print "--> "
  gets.chomp.downcase
end


response = menu

while response != 'q'
  case response
  when '1'
    puts "What is the client's name? \n"
    name = gets.chomp
    puts "What is their account balance? \n"
    account_balance = gets.chomp.to_i
    puts "What portfolios does the client have? \n"
    portfolios = gets.chomp
    client = Client.new({name: name, account_balance: account_balance, portfolios: portfolios})
    big_brokerage.clients << client
    puts "#{name} is now in the system. Thanks!"
  when '2'
    puts "What is the name of the portfolio? \n"
    portfolio_name = gets.chomp
    puts "What stocks are in the portfolio? \n"
    portfolio_stocks = gets.chomp
    portfolio = Portfolio.new({portfolio_name: portfolio_name, portfolio_stocks: portfolio_stocks})
    # client.portfolios << portfolio
    puts "#{portfolio_name} has been created. Thanks!"
    binding.pry
  when '3'
    puts "testing"
    binding.pry
  when '4'
    puts "testing"
  when '5'
    list_of_clients_and_balances = big_brokerage.list_clients
  when '6'
    puts "testing"
  when '7'
    puts "testing"
  end
  puts '-' * 41
  puts "press enter to continue"
  gets
  response = menu
end



binding.pry
nil