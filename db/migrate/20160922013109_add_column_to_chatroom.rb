class AddColumnToChatroom < ActiveRecord::Migration[5.0]
  def change
    add_column :chatrooms, :createdby_id, :integer
  end
end
