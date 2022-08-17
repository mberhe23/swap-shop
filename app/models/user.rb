class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # profile
  has_one_attached :photo
  # validates :photo, presence: true
  validates :email, uniqueness: true

  # relation to other models
  has_many :listings
  has_many :requests
  has_many :swaps, through: :requests
end
