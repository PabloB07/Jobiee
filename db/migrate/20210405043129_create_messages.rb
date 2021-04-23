class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :sender, polymorphic: true, null: false
      t.integer :conversation_id
      t.datetime :created_at
      t.datetime :updated_at
    end
    add_index :messages, :conversation_id
    add_index :messages, :created_at
  end
end
