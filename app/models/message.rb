class Message < ApplicationRecord
  belongs_to :chat_rooms
  belongs_to :sender, class_name: "User", primary_key: "sender_id"
  belongs_to :receiver, class_name: "User", primary_key: "receiver_id"
  has_many :messages
  has_many :users, through: :messages
end
