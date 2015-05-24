require 'pry'

require_relative '../lib/brokerage'
require_relative '../lib/client'
require_relative '../lib/portfolio'
require_relative '../lib/stock'

big_brokerage = Brokerage.new

client_one = Client.new(name: 'Bob', account_balance: 750000, portfolios: ['tech portfolio', 'bank portfolio', 'energy_portfolio'])

big_brokerage.clients << client_one

stock_one = Stock.new(name: 'AAME', num_of_shares: 3800, share_price: 3.4)
stock_two = Stock.new(name: 'AAPL', num_of_shares: 45595900, share_price: 133.0)
stock_three = Stock.new(name: 'AAL', num_of_shares: 16113000, share_price: 42.9)

big_brokerage.stocks << stock_one << stock_two << stock_three

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
  gets.chomp
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
    puts "#{portfolio_name} has been created. Thanks!"
  when '3'
    puts "Which client would like to purchase stocks?"
    client_name = gets.chomp
    puts "Which stocks would they like to purchase: AAME, AAPL, or AAL?"
    stock_name = gets.chomp
    puts "How many shares would they like to purchase?"
    shares = gets.chomp.to_i
    big_brokerage.clients.each do |client|
      if client.name == client_name
        @chosen_client = client
      end
    end
    big_brokerage.stocks.each do |stock|
      if stock.name == stock_name
        @chosen_stock = stock
      end
    end
    cost_of_purchase = @chosen_stock.share_price * shares
    @chosen_client.account_balance = @chosen_client.account_balance - cost_of_purchase
    @chosen_stock.num_of_shares = @chosen_stock.num_of_shares - shares
    print "#{client_name} has now purchased #{shares} shares of #{stock_name} for $#{cost_of_purchase}. \n"
  when '4'
    puts "Which client would like to sell their stocks?"
    client_name = gets.chomp
    puts "Which stocks would they like to sell: AAME, AAPL, or AAL?"
    stock_name = gets.chomp
    puts "How many shares would they like to sell?"
    shares = gets.chomp.to_i
    big_brokerage.clients.each do |client|
      if client.name == client_name
        @chosen_client = client
      end
    end
    big_brokerage.stocks.each do |stock|
      if stock.name == stock_name
        @chosen_stock = stock
      end
    end
    amount_to_sell = (@chosen_stock.share_price * shares).ceil
    @chosen_client.account_balance = @chosen_client.account_balance + amount_to_sell
    @chosen_stock.num_of_shares = @chosen_stock.num_of_shares + shares
    print "#{client_name} has now sold #{shares} shares of #{stock_name}, earning them $#{amount_to_sell}. \n"
  when '5'
    list_of_clients_and_balances = big_brokerage.list_clients
  when '6'
    list_of_portfolios_and_values = big_brokerage.list_portfolios
  when '7'
    puts "testing"
  end
  puts '-' * 50
  puts "press enter to continue"
  gets
  response = menu
end



binding.pry
nil