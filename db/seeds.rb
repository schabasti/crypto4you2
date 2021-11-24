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
