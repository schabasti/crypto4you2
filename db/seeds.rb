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
finn.username = "finnerdmann"
finn.score = 350
finn.ledger_address = "LTAQ2F-HV3UG-0PO1ZC"
finn.bio = "Crypto enthusiast with a nodge for risky coins #dogecoin #tothemoon"
# finn_picture = URI.open('https://kitt.lewagon.com/placeholder/users/jfcerdmann')
# finn.photo.attach(io: finn_picture, filename: 'nes.png', content_type: 'image/png')
finn.save!

luis = User.new
luis.email = "luis@lewagon.org"
luis.password = "123456"
luis.username = "luiskohl"
luis.score = 460
luis.ledger_address = "L1Y2PL-Q42WJ-Q19IUP"
luis.bio = "I've been investing in crypto since four years and am open to help anyone who is new to this amazing world #eth"
# luis_picture = URI.open('https://kitt.lewagon.com/placeholder/users/code7756221432')
# luis.photo.attach(io: luis_picture, filename: 'nes.png', content_type: 'image/png')
luis.save!

sebastian = User.new
sebastian.email = "sebastian@lewagon.org"
sebastian.password = "123456"
sebastian.username = "sebastianburkhardt"
sebastian.score = 520
sebastian.ledger_address = "LU1O3E-C2AF5-TZ5P6A"
sebastian.bio = "Experienced crypto trader with profain knowledge about Ethereum and some Bitcoin basics"
# sebastian_picture = URI.open('https://kitt.lewagon.com/placeholder/users/schabasti')
# sebastian.photo.attach(io: sebastian_picture, filename: 'nes.png', content_type: 'image/png')
sebastian.save!

marcus = User.new
marcus.email = "marcus@lewagon.org"
marcus.password = "123456"
marcus.username = "marcuswrede"
marcus.score = 195
marcus.ledger_address = "LAR4MS-QW4UT-J13L7D"
marcus.bio = "Relatively new to the world of crypto and looking for more serious investment opportunities"
# marcus_picture = URI.open('https://kitt.lewagon.com/placeholder/users/wredemarcus')
# marcus.photo.attach(io: marcus_picture, filename: 'nes.png', content_type: 'image/png')
marcus.save!

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
dollar.save!

euro = Currency.new
euro.name = "Euro"
euro.description = "The euro is the official currency of 19 member nations of the European Economic and Monetary Union (EMU), or EU, which is comprised of 27 member nations."
euro.is_crypto = false
euro.save!

bitcoin = Currency.new
bitcoin.name = "Bitcoin"
bitcoin.description = "Bitcoin is a decentralized digital currency created in January 2009. Bitcoin is known as a type of cryptocurrency because it uses cryptography to keep it secure. There are no physical bitcoins, only balances kept on a public ledger that everyone has transparent access to (although each record is encrypted)."
bitcoin.is_crypto = true
bitcoin.save!

ethereum = Currency.new
ethereum.name = "Ethereum"
ethereum.description = "Ethereum is a blockchain platform with its own cryptocurrency, called Ether (ETH) or Ethereum, and its own programming language, called Solidity. As a blockchain network, Ethereum is a decentralized public ledger for verifying and recording transactions. The network's users can create, publish, monetize, and use applications on the platform, and use its Ether cryptocurrency as payment. Insiders call the decentralized applications on the network 'dApps'. As a cryptocurrency, Ethereum is second in market value only to Bitcoin, as of May 2021."
ethereum.is_crypto = true
ethereum.save!

dogecoin = Currency.new
dogecoin.name = "Dogecoin"
dogecoin.description = "Dogecoin (DOGE) is a peer-to-peer, open-source cryptocurrency. It is considered an altcoin and an almost sarcastic meme coin. While it was created seemingly as a joke, Dogecoin's blockchain still has merit. Its underlying technology is derived from Litecoin."
dogecoin.is_crypto = true
dogecoin.save!

puts "Creating user currencies..."

finn_dogecoin = UserCurrency.new
finn_dogecoin.amount = 1129.17
finn_dogecoin.user = finn
finn_dogecoin.currency = dogecoin
finn_dogecoin.save!

luis_ethereum = UserCurrency.new
luis_ethereum.amount = 8.67
luis_ethereum.user = luis
luis_ethereum.currency = ethereum
luis_ethereum.save!

luis_bitcoin = UserCurrency.new
luis_bitcoin.amount = 3.14
luis_bitcoin.user = luis
luis_bitcoin.currency = bitcoin
luis_bitcoin.save!

sebastian_ethereum = UserCurrency.new
sebastian_ethereum.amount = 5.31
sebastian_ethereum.user = sebastian
sebastian_ethereum.currency = ethereum
sebastian_ethereum.save!

sebastian_bitcoin = UserCurrency.new
sebastian_bitcoin.amount = 7.14
sebastian_bitcoin.user = sebastian
sebastian_bitcoin.currency = bitcoin
sebastian_bitcoin.save!

sebastian_dogecoin = UserCurrency.new
sebastian_dogecoin.amount = 867.89
sebastian_dogecoin.user = sebastian
sebastian_dogecoin.currency = dogecoin
sebastian_dogecoin.save!

marcus_ethereum = UserCurrency.new
marcus_ethereum.amount = 1.31
marcus_ethereum.user = marcus
marcus_ethereum.currency = ethereum
marcus_ethereum.save!

marcus_bitcoin = UserCurrency.new
marcus_bitcoin.amount = 0.74
marcus_bitcoin.user = marcus
marcus_bitcoin.currency = bitcoin
marcus_bitcoin.save!

# Seeding trades
puts "Creating trades..."

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
trade3.date = "2021-04-16"
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
trade5.date = "2019-05-04"
trade5.type_of_trade = "buy"
trade5.price = 615.53
trade5.volume = 3.14
trade5.income_tax = 0
trade5.tax_rate = 0.25
trade5.total_value = 5_100.32
trade5.amount_tax_free = 0
trade5.user = luis
trade5.start_currency = euro
trade5.end_currency = bitcoin
trade5.save!

trade6 = Trade.new
trade6.date = "2021-01-04"
trade6.type_of_trade = "buy"
trade6.price = 1_050.53
trade6.volume = 15.67
trade6.income_tax = 0
trade6.tax_rate = 0.25
trade6.total_value = 16_453.50
trade6.amount_tax_free = 0
trade6.user = luis
trade6.start_currency = euro
trade6.end_currency = ethereum
trade6.save!

trade7 = Trade.new
trade7.date = "2021-11-21"
trade7.type_of_trade = "sell"
trade7.price = 4_307.53
trade7.volume = 7
trade7.income_tax = 7_538.18
trade7.tax_rate = 0.25
trade7.total_value = 30_152.71
trade7.amount_tax_free = 8.67
trade7.user = luis
trade7.start_currency = ethereum
trade7.end_currency = euro
trade7.save!

trade8 = Trade.new
trade8.date = "2021-10-09"
trade8.type_of_trade = "buy"
trade8.price = 3_215.08
trade8.volume = 1.31
trade8.income_tax = 0
trade8.tax_rate = 0.25
trade8.total_value = 4_211.75
trade8.amount_tax_free = 0
trade8.user = marcus
trade8.start_currency = euro
trade8.end_currency = ethereum
trade8.save!

trade9 = Trade.new
trade9.date = "2021-10-09"
trade9.type_of_trade = "buy"
trade9.price = 45_529.08
trade9.volume = 0.74
trade9.income_tax = 0
trade9.tax_rate = 0.25
trade9.total_value = 33_691.52
trade9.amount_tax_free = 0
trade9.user = marcus
trade9.start_currency = euro
trade9.end_currency = bitcoin
trade9.save!

puts "Seeding finished"
