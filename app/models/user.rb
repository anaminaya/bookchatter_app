class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books
  has_many :books, through: :favorites
  has_many :chat_rooms
  has_many :messages, through: :chat_rooms
  has_many :messages, class_name: "Message", foreign_key: "sender_id"
  has_many :messages, class_name: "Message", foreign_key: "recipient_id"

end
