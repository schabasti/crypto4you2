class Currency < ApplicationRecord
  has_many :user_currencies
  has_many :trades

  validates :name, presence: true
  validates :is_crypto, presence: true
  validates :description, presence: true
end
