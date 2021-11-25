class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :start_currency, class_name: "Currency"
  belongs_to :end_currency, class_name: "Currency"

  validates :date, presence: true
  validates :type_of_trade, presence: true, inclusion: { in: %w[buy sell] }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :volume, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :income_tax, presence: true
  validates :tax_rate, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 1.0 }
  validates :total_value, presence: true
  validates :amount_tax_free, presence: true

  after_create :calculate_user_score

  private

  def calculate_user_score
    user.calculate_score
  end
end
