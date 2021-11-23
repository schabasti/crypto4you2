class CreateUserCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :user_currencies do |t|
      t.float :amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
