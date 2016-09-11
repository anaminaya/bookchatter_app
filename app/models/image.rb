class Image < ApplicationRecord
  belongs_to :book
  validates :link, presence: true
end
