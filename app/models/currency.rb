class Currency < ApplicationRecord
  has_many :user_currencies, dependent: :destroy
  has_many :start_currencies_trades, class_name: "Trade", foreign_key: :start_currency_id, dependent: :destroy
  has_many :end_currencies_trades, class_name: "Trade", foreign_key: :end_currency_id, dependent: :destroy

  validates :name, presence: true
  validates :is_crypto, inclusion: [true, false]
  validates :description, presence: true
end
