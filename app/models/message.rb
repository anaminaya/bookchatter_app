class Message < ApplicationRecord
  belongs_to :sender
  belongs_to :receiver
  has_many :messages
  has_many :users, through: :messages
end
