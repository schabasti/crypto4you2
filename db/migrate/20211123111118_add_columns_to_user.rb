class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :score, :integer
    add_column :users, :ledger_address, :string
    add_column :users, :bio, :text
  end
end
