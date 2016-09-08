class RenameColumnAddColumnToChat < ActiveRecord::Migration[5.0]
  def change
    rename_column :chat_rooms, :user_id, :sender_id
    add_column :chat_rooms, :receiver_id, :integer
  end
end
