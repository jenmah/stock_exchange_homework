REQUIREMENTS
Create an account for client (name, balance).
Every client can create multiple portfolios.
A client can buy stocks at market rate; these stocks will be added to a portfolio and the purchase amount subtracted from cash. (You cannot go to a negative cash balance).
A client can sell a stock. The proceeds go into his account.
List all client portfolios and their values (each portfolio value and sum of portfolio values) and the account balance.
List all stocks in a portfolio.
List all clients.
You need to create the following classes:

BROKERAGE

name
clients
CLIENT

name
balance
portfolios (clue, in your initialize assign this to an empty hash or an empty array)
PORTFOLIO

name
stocks (clue, in your initialize assign this to an empty hash or an empty array)
STOCK

no_of_shares
stock_name
share_price (Here are is link to some stock prices to reference: http://www.eoddata.com/stockList/NASDAQ.htm)
Notes:

Bob
Total Balance: $ 750,000

Bob’s Portfolios

Tech Portfolio: AAPL, GOOG, AMZN
Bank Portfolio: US Bank, TD Bank, BofA
Energy Portfolio: GE, SolarWinds, GreenEnergie
Here is the menu:

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









# Classes
# brokerage:

# client:
# name | string
# portfolio | [] or {}
# balance | fixnum

# portfolio:
# name | string
# stocks | [] or {}

# stock:
# name/code | symbol
# price | fixnum