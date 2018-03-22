class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :owner, class_name: 'User'
  has_many :bookings

  validates :category,      presence: true
  validates :price_per_day, presence: true
  validates :description,   presence: true
  validates :photo,         presence: true

  CATEGORIES = ["Computers", "Cameras", "Drones", "Televisions", "Sound Gear", "Smartphones"]

  def self.categories
    CATEGORIES
  end

end
