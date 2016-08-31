class RenameConversationIdColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :chat_rooms, :conversation_id, :message_id
  end
end
