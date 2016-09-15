class AddSlugToChat < ActiveRecord::Migration[5.0]
  def change
    drop_table :chat_rooms

    create_table :chatrooms do |t|
      t.string :topic
      t.string :slug
      t.integer :user_id
      t.integer :message_id

      t.timestamps
    end
  end
end
