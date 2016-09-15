class Book < ApplicationRecord
  has_one :image
  has_many :favorites
  has_many :users, through: :favorites
end
