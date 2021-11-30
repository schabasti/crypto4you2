class AddCurrentEuroValueToCurrencies < ActiveRecord::Migration[6.1]
  def change
    add_column :currencies, :current_euro_value, :float, default: 0, null: false
  end
end
