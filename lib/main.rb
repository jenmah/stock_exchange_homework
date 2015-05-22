require 'pry'

require_relative '../lib/brokerage'
require_relative '../lib/client'
require_relative '../lib/portfolio'
require_relative '../lib/stock'


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
    puts "What is the name of the animal \n"
    name = gets.chomp
    puts "What type of animal is it: cat or dog? \n"
    type = gets.chomp
    puts "How old is the animal? \n"
    age = gets.chomp.to_i
    puts "Is the animal male or female? \n"
    gender = gets.chomp
    animal = Animal.new({name: name, type: type, age: age, gender: gender})
    happitails_shelter.animals << animal
    puts "#{name} is now in the HappiTails System. Thanks!"
  when '2'
    list_of_animals = happitails_shelter.list_animals
  when '3'
    puts "testing"
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