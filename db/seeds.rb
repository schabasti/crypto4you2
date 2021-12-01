require 'open-uri'
# Destroying databases
puts "Destroying databases..."

User.destroy_all
Conversation.destroy_all
Message.destroy_all
Currency.destroy_all
UserCurrency.destroy_all
Trade.destroy_all

# Seeding users
puts "Creating users..."

finn = User.new
finn.email = "finn@lewagon.org"
finn.password = "123456"
finn.first_name = "Finn"
finn.last_name = "Erdmann"
finn.username = "finnerdmann"
finn.score = 350
finn.ledger_address = "LTAQ2F-HV3UG-0PO1ZC"
finn.bio = "Crypto enthusiast with a nodge for risky coins #dogecoin #tothemoon"
finn_picture = URI.open('https://kitt.lewagon.com/placeholder/users/jfcerdmann')
finn.photo.attach(io: finn_picture, filename: 'nes.png', content_type: 'image/png')
finn.save!


luis = User.new
luis.email = "luis@lewagon.org"
luis.password = "123456"
luis.first_name = "Luis"
luis.last_name = "Kohl"
luis.username = "luiskohl"
luis.score = 460
luis.ledger_address = "L1Y2PL-Q42WJ-Q19IUP"
luis.bio = "I've been investing in crypto since four years and am open to help anyone who is new to this amazing world #eth"
luis_picture = URI.open('https://kitt.lewagon.com/placeholder/users/code7756221432')
luis.photo.attach(io: luis_picture, filename: 'nes.png', content_type: 'image/png')
luis.save!

sebastian = User.new
sebastian.email = "sebastian@lewagon.org"
sebastian.password = "123456"
sebastian.first_name = "Sebastian"
sebastian.last_name = "Burkhardt"
sebastian.username = "sebburkhardt"
sebastian.score = 520
sebastian.ledger_address = "LU1O3E-C2AF5-TZ5P6A"
sebastian.bio = "Experienced crypto trader with profain knowledge about Ethereum and some Bitcoin basics"
sebastian_picture = URI.open('https://kitt.lewagon.com/placeholder/users/schabasti')
sebastian.photo.attach(io: sebastian_picture, filename: 'nes.png', content_type: 'image/png')
sebastian.save!

marcus = User.new
marcus.email = "marcus@lewagon.org"
marcus.password = "123456"
marcus.first_name = "Marcus"
marcus.last_name = "Wrede"
marcus.username = "marcuswrede"
marcus.score = 195
marcus.ledger_address = "LAR4MS-QW4UT-J13L7D"
marcus.bio = "Relatively new to the world of crypto and looking for more serious investment opportunities"
marcus_picture = URI.open('https://kitt.lewagon.com/placeholder/users/wredemarcus')
marcus.photo.attach(io: marcus_picture, filename: 'nes.png', content_type: 'image/png')
marcus.save!

peter = User.new
peter.email = "peter@lewagon.org"
peter.password = "123456"
peter.first_name = "Peter"
peter.last_name = "Müller"
peter.username = "cryptopeter"
peter.score = 195
peter.ledger_address = "LRL7D-RPUT-J05D"
peter.bio = "Hooked on crypto since Day 1. If you want to know anything let me know, I am an expert 😎"
peter_picture = URI.open('https://kitt.lewagon.com/placeholder/users/random')
peter.photo.attach(io: peter_picture, filename: 'nes.png', content_type: 'image/png')
peter.save!

maja = User.new
maja.email = "maja@lewagon.org"
maja.password = "123456"
maja.first_name = "Maja"
maja.last_name = "Kusnezow"
maja.username = "kusnezow"
maja.score = 800
maja.ledger_address = "PE2I-BY51-HP50"
maja.bio = "Just found crypto4you on Google and want to try it. Looks amazing!"
maja_picture = URI.open('https://kitt.lewagon.com/placeholder/users/random')
maja.photo.attach(io: maja_picture, filename: 'nes.png', content_type: 'image/png')
maja.save!

# Seeding Conversations and messages
puts "Creating conversations..."

chat_luis_finn = Conversation.new
chat_luis_finn.user1 = finn
chat_luis_finn.user2 = luis
chat_luis_finn.save!

chat_luis_marcus = Conversation.new
chat_luis_marcus.user1 = marcus
chat_luis_marcus.user2 = luis
chat_luis_marcus.save!

chat_sebastian_marcus = Conversation.new
chat_sebastian_marcus.user1 = marcus
chat_sebastian_marcus.user2 = sebastian
chat_sebastian_marcus.save!

chat_sebastian_finn = Conversation.new
chat_sebastian_finn.user1 = finn
chat_sebastian_finn.user2 = sebastian
chat_sebastian_finn.save!

puts "Creating messages..."

# Chat Luis/Finn
message_finn_luis1 = Message.new
message_finn_luis1.content = "Hey Luis, I saw you have some experience already. Have you heard about this new coin called Suteku? How would you rate it?"
message_finn_luis1.user = finn
message_finn_luis1.conversation = chat_luis_finn
message_finn_luis1.save!

message_finn_luis2 = Message.new
message_finn_luis2.content = "Hello Finn. How are you? Frankly I have not heard of it before but looked into it. I'd say it is more of a risky one but has some upside."
message_finn_luis2.user = luis
message_finn_luis2.conversation = chat_luis_finn
message_finn_luis2.save!

message_finn_luis3 = Message.new
message_finn_luis3.content = "Thank you man! Really appreciate it. Actually exactly what I was looking for 🌑🚀"
message_finn_luis3.user = finn
message_finn_luis3.conversation = chat_luis_finn
message_finn_luis3.save!

# Chat Luis/Marcus
message_luis_marcus1 = Message.new
message_luis_marcus1.content = "Hey Marcus, I saw you are new to our crypto world. Can I help you with some tips or tricks?"
message_luis_marcus1.user = luis
message_luis_marcus1.conversation = chat_luis_marcus
message_luis_marcus1.save!

message_luis_marcus2 = Message.new
message_luis_marcus2.content = "Hello Luis, that is super nice. Thanks! At the moment I am getting used to all of and don't have any questions. But I will definitely come back to you at one point 👌🏼"
message_luis_marcus2.user = marcus
message_luis_marcus2.conversation = chat_luis_marcus
message_luis_marcus2.save!

# Chat Sebastian/Marcus
message_sebastian_marcus1 = Message.new
message_sebastian_marcus1.content = "Morning Sebastian, I saw that you are an expert in Ethereum. I am super interested in it and would like to understand more about the technology behind it. Could you tell me a bit about it?"
message_sebastian_marcus1.user = marcus
message_sebastian_marcus1.conversation = chat_sebastian_marcus
message_sebastian_marcus1.save!

message_sebastian_marcus2 = Message.new
message_sebastian_marcus2.content = "Sure thing! Ethereum is a blockchain platform with its own cryptocurrency, called Ether (ETH) or Ethereum, and its own programming language, called Solidity. As a blockchain network, Ethereum is a decentralized public ledger for verifying and recording transactions. The network's users can create, publish, monetize, and use applications on the platform, and use its Ether cryptocurrency as payment. Insiders call the decentralized applications on the network 'dApps'. As a cryptocurrency, Ethereum is second in market value only to Bitcoin, as of May 2021. If you want to learn more about it, check out https://www.investopedia.com/terms/e/ethereum.asp"
message_sebastian_marcus2.user = sebastian
message_sebastian_marcus2.conversation = chat_sebastian_marcus
message_sebastian_marcus2.save!

message_sebastian_marcus3 = Message.new
message_sebastian_marcus3.content = "Thank you!! That was super helpful to understand a bit more. If I have more questions later on, can I come back to you again or maybe even have a video call?"
message_sebastian_marcus3.user = marcus
message_sebastian_marcus3.conversation = chat_sebastian_marcus
message_sebastian_marcus3.save!

message_sebastian_marcus4 = Message.new
message_sebastian_marcus4.content = "Yes surely! Let's have a call on Friday"
message_sebastian_marcus4.user = sebastian
message_sebastian_marcus4.conversation = chat_sebastian_marcus
message_sebastian_marcus4.save!

# Chat Sebastian/Finn
message_finn_sebastian1 = Message.new
message_finn_sebastian1.content = "Just texting you to tell you that dogecoin took a huge dive yesterday after Elon's tweet"
message_finn_sebastian1.user = sebastian
message_finn_sebastian1.conversation = chat_sebastian_finn
message_finn_sebastian1.save!

message_finn_sebastian2 = Message.new
message_finn_sebastian2.content = "Yes I saw. So frustrating but I am still hopeful #tothemooooon 🌑🚀"
message_finn_sebastian2.user = finn
message_finn_sebastian2.conversation = chat_sebastian_finn
message_finn_sebastian2.save!

message_finn_sebastian3 = Message.new
message_finn_sebastian3.content = "Haha I'd love to have your optimism. Good luck!"
message_finn_sebastian3.user = sebastian
message_finn_sebastian3.conversation = chat_sebastian_finn
message_finn_sebastian3.save!

# Seeding currencies
puts "Creating currencies..."

dollar = Currency.new
dollar.name = "US-Dollar"
dollar.description = "The United States dollar, or U.S. dollar, is made up of 100 cents. It is represented by the symbol $ or US$ to differentiate it from other dollar-based currencies. The U.S. dollar is considered a benchmark currency and is the most-used currency in transactions across the world."
dollar.is_crypto = false
dollar.symbol = "USD"
dollar.save!

euro = Currency.new
euro.name = "Euro"
euro.description = "The euro is the official currency of 19 member nations of the European Economic and Monetary Union (EMU), or EU, which is comprised of 27 member nations."
euro.is_crypto = false
euro.symbol = "EUR"
euro.save!

bitcoin = Currency.new
bitcoin.name = "Bitcoin"
bitcoin.description = "Bitcoin is a decentralized digital currency created in January 2009. Bitcoin is known as a type of cryptocurrency because it uses cryptography to keep it secure. There are no physical bitcoins, only balances kept on a public ledger that everyone has transparent access to (although each record is encrypted)."
bitcoin.is_crypto = true
bitcoin.symbol = "BTC"
bitcoin.save!

ethereum = Currency.new
ethereum.name = "Ethereum"
ethereum.description = "Ethereum is a blockchain platform with its own cryptocurrency, called Ether (ETH) or Ethereum, and its own programming language, called Solidity. As a blockchain network, Ethereum is a decentralized public ledger for verifying and recording transactions. The network's users can create, publish, monetize, and use applications on the platform, and use its Ether cryptocurrency as payment. Insiders call the decentralized applications on the network 'dApps'. As a cryptocurrency, Ethereum is second in market value only to Bitcoin, as of May 2021."
ethereum.is_crypto = true
ethereum.symbol = "ETH"
ethereum.save!

dogecoin = Currency.new
dogecoin.name = "Dogecoin"
dogecoin.description = "Dogecoin (DOGE) is a peer-to-peer, open-source cryptocurrency. It is considered an altcoin and an almost sarcastic meme coin. While it was created seemingly as a joke, Dogecoin's blockchain still has merit. Its underlying technology is derived from Litecoin."
dogecoin.is_crypto = true
dogecoin.symbol = "DOGE"
dogecoin.save!

binancecoin = Currency.new
binancecoin.name = "Binance Coin"
binancecoin.description = "Binance Coin is the cryptocurrency issued by Binance, among the largest crypto exchanges in the world. While originally created as a token to pay for discounted trades, Binance Coin can now be used for payments as well as purchasing various goods and services."
binancecoin.is_crypto = true
binancecoin.symbol = "BNB"
binancecoin.save!

cardano = Currency.new
cardano.name = "Cardano"
cardano.description = "Cardano is the cryptocurrency platform behind ada, the name of the currency. Created by the co-founder of Ethereum, Cardano also uses smart contracts, enabling identity management."
cardano.is_crypto = true
cardano.symbol = "ADA"
cardano.save!

solana = Currency.new
solana.name = "Solana"
solana.description = "Launched in March 2020, Solana is a newer cryptocurrency and it touts its speed at completing transactions and the overall robustness of its “web-scale” platform. The issuance of the currency, called SOL, is capped at 480 million coins."
solana.is_crypto = true
solana.symbol = "SOL"
solana.save!

xrp = Currency.new
xrp.name = "XRP"
xrp.description = "Formerly known as Ripple and created in 2012, XRP offers a way to pay in many different real-world currencies. Ripple can be useful in cross-border transactions and uses a trust-less mechanism to facilitate payments."
xrp.is_crypto = true
xrp.symbol = "XRP"
xrp.save!

CurrencyService.new.update_current_values
puts "Creating user currencies..."

# Finn coins
finn_dogecoin = UserCurrency.new
finn_dogecoin.amount = 1129.17
finn_dogecoin.user = finn
finn_dogecoin.currency = dogecoin
finn_dogecoin.save!

finn_solana = UserCurrency.new
finn_solana.amount = 102.67
finn_solana.user = finn
finn_solana.currency = solana
finn_solana.save!

finn_xrp = UserCurrency.new
finn_xrp.amount = 1_002.82
finn_xrp.user = finn
finn_xrp.currency = xrp
finn_xrp.save!

# Luis coins
luis_ethereum = UserCurrency.new
luis_ethereum.amount = 8.67
luis_ethereum.user = luis
luis_ethereum.currency = ethereum
luis_ethereum.save!

luis_bitcoin = UserCurrency.new
luis_bitcoin.amount = 0.74
luis_bitcoin.user = luis
luis_bitcoin.currency = bitcoin
luis_bitcoin.save!

luis_binancecoin = UserCurrency.new
luis_binancecoin.amount = 11.23
luis_binancecoin.user = luis
luis_binancecoin.currency = binancecoin
luis_binancecoin.save!

luis_cardano = UserCurrency.new
luis_cardano.amount = 353.80
luis_cardano.user = luis
luis_cardano.currency = cardano
luis_cardano.save!

luis_solana = UserCurrency.new
luis_solana.amount = 4.5
luis_solana.user = luis
luis_solana.currency = solana
luis_solana.save!

# Sebastian coins
sebastian_ethereum = UserCurrency.new
sebastian_ethereum.amount = 5.31
sebastian_ethereum.user = sebastian
sebastian_ethereum.currency = ethereum
sebastian_ethereum.save!

sebastian_bitcoin = UserCurrency.new
sebastian_bitcoin.amount = 1.74
sebastian_bitcoin.user = sebastian
sebastian_bitcoin.currency = bitcoin
sebastian_bitcoin.save!

sebastian_dogecoin = UserCurrency.new
sebastian_dogecoin.amount = 9_867.89
sebastian_dogecoin.user = sebastian
sebastian_dogecoin.currency = dogecoin
sebastian_dogecoin.save!

sebastian_binancecoin = UserCurrency.new
sebastian_binancecoin.amount = 15
sebastian_binancecoin.user = sebastian
sebastian_binancecoin.currency = binancecoin
sebastian_binancecoin.save!

sebastian_cardano = UserCurrency.new
sebastian_cardano.amount = 2_746.56
sebastian_cardano.user = sebastian
sebastian_cardano.currency = cardano
sebastian_cardano.save!

sebastian_solana = UserCurrency.new
sebastian_solana.amount = 81.07
sebastian_solana.user = sebastian
sebastian_solana.currency = solana
sebastian_solana.save!

sebastian_xrp = UserCurrency.new
sebastian_xrp.amount = 2_467.92
sebastian_xrp.user = sebastian
sebastian_xrp.currency = xrp
sebastian_xrp.save!

# Marcus coins
marcus_ethereum = UserCurrency.new
marcus_ethereum.amount = 1.31
marcus_ethereum.user = marcus
marcus_ethereum.currency = ethereum
marcus_ethereum.save!

marcus_bitcoin = UserCurrency.new
marcus_bitcoin.amount = 0.64
marcus_bitcoin.user = marcus
marcus_bitcoin.currency = bitcoin
marcus_bitcoin.save!

marcus_cardano = UserCurrency.new
marcus_cardano.amount = 702_34
marcus_cardano.user = marcus
marcus_cardano.currency = cardano
marcus_cardano.save!

marcus_solana = UserCurrency.new
marcus_solana.amount = 33.78
marcus_solana.user = marcus
marcus_solana.currency = solana
marcus_solana.save!

# Peters coins
peter_ethereum = UserCurrency.new
peter_ethereum.amount = 95.49
peter_ethereum.user = peter
peter_ethereum.currency = ethereum
peter_ethereum.save!

peter_bitcoin = UserCurrency.new
peter_bitcoin.amount = 1.42
peter_bitcoin.user = peter
peter_bitcoin.currency = bitcoin
peter_bitcoin.save!

peter_dogecoin = UserCurrency.new
peter_dogecoin.amount = 11_589.02
peter_dogecoin.user = peter
peter_dogecoin.currency = dogecoin
peter_dogecoin.save!

peter_binancecoin = UserCurrency.new
peter_binancecoin.amount = 18.93
peter_binancecoin.user = peter
peter_binancecoin.currency = binancecoin
peter_binancecoin.save!

peter_cardano = UserCurrency.new
peter_cardano.amount = 7_631.74
peter_cardano.user = peter
peter_cardano.currency = cardano
peter_cardano.save!

peter_solana = UserCurrency.new
peter_solana.amount = 198.36
peter_solana.user = peter
peter_solana.currency = solana
peter_solana.save!

peter_xrp = UserCurrency.new
peter_xrp.amount = 25_129.76
peter_xrp.user = peter
peter_xrp.currency = xrp
peter_xrp.save!

# Maja coins
maja_solana = UserCurrency.new
maja_solana.amount = 203.45
maja_solana.user = maja
maja_solana.currency = solana
maja_solana.save!

maja_xrp = UserCurrency.new
maja_xrp.amount = 3.56
maja_xrp.user = maja
maja_xrp.currency = ethereum
maja_xrp.save!

# Seeding trades
puts "Creating trades..."

# Sebastian trades
trade1 = Trade.new
trade1.date = "2017-05-04"
trade1.type_of_trade = "buy"
trade1.price = 615.53
trade1.volume = 10.56
trade1.income_tax = 0
trade1.tax_rate = 0.25
trade1.total_value = 6_500.00
trade1.amount_tax_free = 0
trade1.user = sebastian
trade1.start_currency = euro
trade1.end_currency = bitcoin
trade1.save!

trade2 = Trade.new
trade2.date = "2019-10-12"
trade2.type_of_trade = "sell"
trade2.price = 43_896.20
trade2.volume = 3.42
trade2.income_tax = 0
trade2.tax_rate = 0.25
trade2.total_value = 150_125.00
trade2.amount_tax_free = 7.14
trade2.user = sebastian
trade2.start_currency = bitcoin
trade2.end_currency = euro
trade2.save!

trade3 = Trade.new
trade3.date = "2020-03-07"
trade3.type_of_trade = "buy"
trade3.price = 1_900.87
trade3.volume = 5.31
trade3.income_tax = 0
trade3.tax_rate = 0.25
trade3.total_value = 10_093.62
trade3.amount_tax_free = 0
trade3.user = sebastian
trade3.start_currency = euro
trade3.end_currency = ethereum
trade3.save!

trade4 = Trade.new
trade4.date = "2021-08-21"
trade4.type_of_trade = "buy"
trade4.price = 0.84
trade4.volume = 867.89
trade4.income_tax = 0
trade4.tax_rate = 0.25
trade4.total_value = 728.28
trade4.amount_tax_free = 0
trade4.user = sebastian
trade4.start_currency = euro
trade4.end_currency = dogecoin
trade4.save!

trade5 = Trade.new
trade5.date = "2021-10-12"
trade5.type_of_trade = "buy"
trade5.price = 429.32
trade5.volume = 1.65
trade5.income_tax = 0
trade5.tax_rate = 0.25
trade5.total_value = 708.38
trade5.amount_tax_free = 0
trade5.user = sebastian
trade5.start_currency = euro
trade5.end_currency = binancecoin
trade5.save!

trade6 = Trade.new
trade6.date = "2020-01-03"
trade6.type_of_trade = "buy"
trade6.price = 0.84
trade6.volume = 3_801.45
trade6.income_tax = 0
trade6.tax_rate = 0.25
trade6.total_value = 3_193.22
trade6.amount_tax_free = 0
trade6.user = sebastian
trade6.start_currency = euro
trade6.end_currency = cardano
trade6.save!

trade7 = Trade.new
trade7.date = "2021-09-03"
trade7.type_of_trade = "sell"
trade7.price = 2.51
trade7.volume = 1_054.89
trade7.income_tax = 0
trade7.tax_rate = 0.25
trade7.total_value = 2_647.77
trade7.amount_tax_free = 2_746.56
trade7.user = sebastian
trade7.start_currency = cardano
trade7.end_currency = euro
trade7.save!

trade8 = Trade.new
trade8.date = "2021-01-10"
trade8.type_of_trade = "buy"
trade8.price = 2.67
trade8.volume = 3_000
trade8.income_tax = 0
trade8.tax_rate = 0.25
trade8.total_value = 8_010.00
trade8.amount_tax_free = 0
trade8.user = sebastian
trade8.start_currency = euro
trade8.end_currency = solana
trade8.save!

trade9 = Trade.new
trade9.date = "2021-11-06"
trade9.type_of_trade = "sell"
trade9.price = 224.61
trade9.volume = 2_918.93
trade9.income_tax = 163_905.22
trade9.tax_rate = 0.25
trade9.total_value = 655_620.87
trade9.amount_tax_free = 0
trade9.user = sebastian
trade9.start_currency = solana
trade9.end_currency = euro
trade9.save!

trade10 = Trade.new
trade10.date = "2017-05-25"
trade10.type_of_trade = "buy"
trade10.price = 0.01
trade10.volume = 1_067.92
trade10.income_tax = 0
trade10.tax_rate = 0.25
trade10.total_value = 100.68
trade10.amount_tax_free = 0
trade10.user = sebastian
trade10.start_currency = euro
trade10.end_currency = xrp
trade10.save!

trade11 = Trade.new
trade11.date = "2018-04-02"
trade11.type_of_trade = "sell"
trade11.price = 2.65
trade11.volume = 400
trade11.income_tax = 0
trade11.tax_rate = 0.25
trade11.total_value = 1_060.00
trade11.amount_tax_free = 467.76
trade11.user = sebastian
trade11.start_currency = xrp
trade11.end_currency = euro
trade11.save!

# Peter trades
trade12 = Trade.new
trade12.date = "2013-07-29"
trade12.type_of_trade = "buy"
trade12.price = 64.76
trade12.volume = 1_345.89
trade12.income_tax = 0
trade12.tax_rate = 0.25
trade12.total_value = 87_159.84
trade12.amount_tax_free = 0
trade12.user = peter
trade12.start_currency = euro
trade12.end_currency = bitcoin
trade12.save!

trade13 = Trade.new
trade13.date = "2019-10-25"
trade13.type_of_trade = "sell"
trade13.price = 43_896.20
trade13.volume = 400
trade13.income_tax = 0
trade13.tax_rate = 0.25
trade13.total_value = 17_558_480.00
trade13.amount_tax_free = 945.89
trade13.user = peter
trade13.start_currency = bitcoin
trade13.end_currency = euro
trade13.save!

trade14 = Trade.new
trade14.date = "2020-03-07"
trade14.type_of_trade = "buy"
trade14.price = 1_935.87
trade14.volume = 113.67
trade14.income_tax = 0
trade14.tax_rate = 0.25
trade14.total_value = 220_050.34
trade14.amount_tax_free = 0
trade14.user = peter
trade14.start_currency = euro
trade14.end_currency = ethereum
trade14.save!

trade15 = Trade.new
trade15.date = "2021-04-21"
trade15.type_of_trade = "buy"
trade15.price = 0.84
trade15.volume = 15_092.47
trade15.income_tax = 0
trade15.tax_rate = 0.25
trade15.total_value = 12_677.67
trade15.amount_tax_free = 0
trade15.user = peter
trade15.start_currency = euro
trade15.end_currency = dogecoin
trade15.save!

trade16 = Trade.new
trade16.date = "2021-02-27"
trade16.type_of_trade = "buy"
trade16.price = 210.60
trade16.volume = 140.93
trade16.income_tax = 0
trade16.tax_rate = 0.25
trade16.total_value = 29_679.86
trade16.amount_tax_free = 0
trade16.user = sebastian
trade16.start_currency = euro
trade16.end_currency = binancecoin
trade16.save!

trade17 = Trade.new
trade17.date = "2018-01-08"
trade17.type_of_trade = "buy"
trade17.price = 0.75
trade17.volume = 18_801.45
trade17.income_tax = 0
trade17.tax_rate = 0.25
trade17.total_value = 14_101.09
trade17.amount_tax_free = 0
trade17.user = peter
trade17.start_currency = euro
trade17.end_currency = cardano
trade17.save!

trade18 = Trade.new
trade18.date = "2021-08-26"
trade18.type_of_trade = "sell"
trade18.price = 2.07
trade18.volume = 11_169.71
trade18.income_tax = 0
trade18.tax_rate = 0.25
trade18.total_value = 23_121.30
trade18.amount_tax_free = 7_631.74
trade18.user = peter
trade18.start_currency = cardano
trade18.end_currency = euro
trade18.save!

trade19 = Trade.new
trade19.date = "2020-12-27"
trade19.type_of_trade = "buy"
trade19.price = 1.18
trade19.volume = 5_972.90
trade19.income_tax = 0
trade19.tax_rate = 0.25
trade19.total_value = 7_048.02
trade19.amount_tax_free = 0
trade19.user = peter
trade19.start_currency = euro
trade19.end_currency = solana
trade19.save!

trade20 = Trade.new
trade20.date = "2021-11-21"
trade20.type_of_trade = "sell"
trade20.price = 212.34
trade20.volume = 5_774.54
trade20.income_tax = 306_541.46
trade20.tax_rate = 0.25
trade20.total_value = 1_226_165.82
trade20.amount_tax_free = 0
trade20.user = peter
trade20.start_currency = solana
trade20.end_currency = euro
trade20.save!

trade21 = Trade.new
trade21.date = "2013-05-25"
trade21.type_of_trade = "buy"
trade21.price = 0.01
trade21.volume = 25_129.76
trade21.income_tax = 0
trade21.tax_rate = 0.25
trade21.total_value = 251.30
trade21.amount_tax_free = 0
trade21.user = peter
trade21.start_currency = euro
trade21.end_currency = xrp
trade21.save!

trade22 = Trade.new
trade22.date = "2021-11-11"
trade22.type_of_trade = "sell"
trade22.price = 4_105.67
trade22.volume = 18.18
trade22.income_tax = 0
trade22.tax_rate = 0.25
trade22.total_value = 74_641.08
trade22.amount_tax_free = 95.49
trade22.user = peter
trade22.start_currency = ethereum
trade22.end_currency = euro
trade22.save!

trade23 = Trade.new
trade23.date = "2021-04-13"
trade23.type_of_trade = "sell"
trade23.price = 53_303.78
trade23.volume = 816.47
trade23.income_tax = 0
trade23.tax_rate = 0.25
trade23.total_value = 43_520_937.30
trade23.amount_tax_free = 129.42
trade23.user = peter
trade23.start_currency = bitcoin
trade23.end_currency = euro
trade23.save!

# Luis trades
trade24 = Trade.new
trade24.date = "2019-05-04"
trade24.type_of_trade = "buy"
trade24.price = 615.53
trade24.volume = 3.14
trade24.income_tax = 0
trade24.tax_rate = 0.25
trade24.total_value = 5_100.32
trade24.amount_tax_free = 0
trade24.user = luis
trade24.start_currency = euro
trade24.end_currency = bitcoin
trade24.save!

trade25 = Trade.new
trade25.date = "2021-01-04"
trade25.type_of_trade = "buy"
trade25.price = 1_050.53
trade25.volume = 15.67
trade25.income_tax = 0
trade25.tax_rate = 0.25
trade25.total_value = 16_453.50
trade25.amount_tax_free = 0
trade25.user = luis
trade25.start_currency = euro
trade25.end_currency = ethereum
trade25.save!

trade26 = Trade.new
trade26.date = "2021-11-21"
trade26.type_of_trade = "sell"
trade26.price = 4_307.53
trade26.volume = 7
trade26.income_tax = 7_538.18
trade26.tax_rate = 0.25
trade26.total_value = 30_152.71
trade26.amount_tax_free = 8.67
trade26.user = luis
trade26.start_currency = ethereum
trade26.end_currency = euro
trade26.save!

# Marcus trades
trade27 = Trade.new
trade27.date = "2021-10-09"
trade27.type_of_trade = "buy"
trade27.price = 3_215.08
trade27.volume = 1.31
trade27.income_tax = 0
trade27.tax_rate = 0.25
trade27.total_value = 4_211.75
trade27.amount_tax_free = 0
trade27.user = marcus
trade27.start_currency = euro
trade27.end_currency = ethereum
trade27.save!

trade28 = Trade.new
trade28.date = "2021-10-09"
trade28.type_of_trade = "buy"
trade28.price = 45_529.08
trade28.volume = 0.74
trade28.income_tax = 0
trade28.tax_rate = 0.25
trade28.total_value = 33_691.52
trade28.amount_tax_free = 0
trade28.user = marcus
trade28.start_currency = euro
trade28.end_currency = bitcoin
trade28.save!

# Maja trades
trade29 = Trade.new
trade29.date = "2021-01-10"
trade29.type_of_trade = "buy"
trade29.price = 2.67
trade29.volume = 203.45
trade29.income_tax = 0
trade29.tax_rate = 0.25
trade29.total_value = 543.21
trade29.amount_tax_free = 0
trade29.user = maja
trade29.start_currency = euro
trade29.end_currency = solana
trade29.save!

trade30 = Trade.new
trade30.date = "2021-10-09"
trade30.type_of_trade = "buy"
trade30.price = 3_215.08
trade30.volume = 3.56
trade30.income_tax = 0
trade30.tax_rate = 0.25
trade30.total_value = 11_445.68
trade30.amount_tax_free = 0
trade30.user = maja
trade30.start_currency = euro
trade30.end_currency = ethereum
trade30.save!

puts "Seeding finished"
