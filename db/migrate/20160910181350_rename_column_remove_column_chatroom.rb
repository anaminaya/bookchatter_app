class RenameColumnRemoveColumnChatroom < ActiveRecord::Migration[5.0]
  def change
    rename_column :chat_rooms, :sender_id, :user_id
    rename_column :chat_rooms, :title, :topic
    remove_column :chat_rooms, :receiver_id, :integer
  end
end
