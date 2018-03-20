class Item < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :reviews, through: :booking
  has_many :bookings

  validates :category, presence: true
  validates :price_per_day, presence: true
  validates :description, presence: true

  CATEGORIES = ["drill", "camera", "drone", "TV"]

  def self.categories
    return CATEGORIES
  end

end
