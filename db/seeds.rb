# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroying databases
puts "Destroying databases..."

Conversation.destroy_all
Currencie.destroy_all
Message.destroy_all
Trade.destroy_all
UserCurrencie.destroy_all
User.destroy_all

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
chat_luis_finn.user = luis
chat_luis_finn.save!

chat_luis_marcus = Conversation.new
chat_luis_marcus.user1 = marcus
chat_luis_marcus.user = luis
chat_luis_marcus.save!

chat_sebastian_marcus = Conversation.new
chat_sebastian_marcus.user1 = marcus
chat_sebastian_marcus.user = sebastian
chat_sebastian_marcus.save!

chat_sebastian_finn = Conversation.new
chat_sebastian_finn.user1 = finn
chat_sebastian_finn.user = sebastian
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
