class AddChatIdColumnToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :chatroom_id, :integer
  end
end
