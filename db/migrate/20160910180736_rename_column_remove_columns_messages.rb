class RenameColumnRemoveColumnsMessages < ActiveRecord::Migration[5.0]
  def change
    rename_column :messages, :body, :content
    remove_column :messages, :sender_id, :integer
    remove_column :messages, :receiver_id, :integer
  end
end
