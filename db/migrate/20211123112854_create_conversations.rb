class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.references :user1, foreign_key: { to_table: :users }, null: false
      t.references :user2, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
