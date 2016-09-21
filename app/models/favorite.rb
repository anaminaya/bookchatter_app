class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :favoritechatrooms, through: :favorites, source: :chatrooms

end
