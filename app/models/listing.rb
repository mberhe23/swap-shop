class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
