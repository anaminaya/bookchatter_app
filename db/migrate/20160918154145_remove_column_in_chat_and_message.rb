class RemoveColumnInChatAndMessage < ActiveRecord::Migration[5.0]
  def change
    remove_column :chatrooms, :slug, :string
    remove_column :chatrooms, :user_id, :integer
    remove_column :chatrooms, :message_id, :integer
    remove_column :messages, :title, :string
  end
end
