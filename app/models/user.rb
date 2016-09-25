class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :ratings
  has_many :favorites
  has_many :books, through: :favorites
  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :favoritechatrooms, through: :favorites, source: :chatroom
  validates :email, presence: true, uniqueness: true

end
