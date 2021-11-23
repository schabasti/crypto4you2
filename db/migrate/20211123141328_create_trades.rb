class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.date :date
      t.string :type_of_trade
      t.float :price
      t.float :volume
      t.float :income_tax
      t.float :tax_rate
      t.float :total_value
      t.float :amount_tax_free
      t.references :user, null: false, foreign_key: true
      t.references :start_currency, foreign_key: { to_table: :currencies }, null: false
      t.references :end_currency, foreign_key: { to_table: :currencies }, null: false

      t.timestamps
    end
  end
end
