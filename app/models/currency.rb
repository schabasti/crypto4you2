class Currency < ApplicationRecord
  has_many :user_currencies
  has_many :start_currencies_trades, class_name: "Trade",
    foreign_key: :start_currency_id
  has_many :end_currencies_trades, class_name: "Trade",
    foreign_key: :end_currency_id

  validates :name, presence: true
  validates :is_crypto, presence: true
  validates :description, presence: true
end
