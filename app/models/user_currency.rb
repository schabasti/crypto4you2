class UserCurrency < ApplicationRecord
  belongs_to :user
  belongs_to :currency

  validates :amount, presence: true
end
