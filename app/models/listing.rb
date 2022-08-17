class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :photo
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
