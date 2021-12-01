class AddSymbolToCurrencies < ActiveRecord::Migration[6.1]
  def change
    add_column :currencies, :symbol, :string, null: false
  end
end
