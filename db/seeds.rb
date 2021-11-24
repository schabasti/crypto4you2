# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first
curreny1 = Currency.first
curreny2 = Currency.last
Trade.create!(
  date: Date.new(2021,11,11),
  type_of_trade: "buy",
  price: 176,
  volume: 3,
  income_tax: 56,
  tax_rate: 0.42,
  total_value: 350,
  amount_tax_free: 0,
  user: user,
  start_currency: curreny1,
  end_currency: curreny2
)
