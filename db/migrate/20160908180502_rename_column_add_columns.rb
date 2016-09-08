class RenameColumnAddColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :messages, :message, :body
    add_column :messages, :sender_id, :integer
    add_column :messages, :receiver_id, :integer
    add_column :messages, :title, :string
  end
end
