class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.integer :user_id

      t.timestamps
    end
    add_index :conversations, :user_id
  end
end
