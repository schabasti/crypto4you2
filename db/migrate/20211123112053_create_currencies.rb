class CreateCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.text :description
      t.boolean :is_crypto

      t.timestamps
    end
  end
end
