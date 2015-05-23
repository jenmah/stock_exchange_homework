require 'pry'

require_relative '../lib/brokerage'
require_relative '../lib/client'
require_relative '../lib/portfolio'
require_relative '../lib/stock'

big_brokerage = Brokerage.new

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
    list_of_animals = happitails_shelter.list_animals
  when '3'
    puts "testing"
    binding.pry
  when '4'
    puts "testing"
  when '5'
    puts "testing"
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