class CreateChatRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :chat_rooms do |t|
      t.integer :user_id
      t.integer :conversation_id

      t.timestamps
    end
  end
end
