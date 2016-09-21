class Book < ApplicationRecord
  has_one :image
  has_many :favorites
  has_many :users, through: :favorites

  def self.search(search)
    Book.where("lower(title) LIKE ? OR lower(genre) LIKE ?", "%#{search}%","%#{search}%")
  end
end
