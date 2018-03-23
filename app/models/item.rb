class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :owner, class_name: 'User', optional: true
  has_many :bookings

  validates :category,      presence: true
  validates :price_per_day, presence: true
  validates :description,   presence: true
  validates :photo,         presence: true
  validates :title,         presence: true

  CATEGORIES = ["computers", "cameras", "drones", "televisions", "sound", "smartphones"]

  def self.categories
    CATEGORIES
  end

end
