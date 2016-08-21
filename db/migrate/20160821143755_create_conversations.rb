class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.string :status
      t.integer :favorite_chat_id
      t.integer :current_chat_id

      t.timestamps
    end
  end
end
