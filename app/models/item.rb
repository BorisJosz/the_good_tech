class Item < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :reviews, through: :booking
  has_many :bookings

  validates :type, presence: true
  validates :availability, presence: true
  validates :price_per_day, presence: true
  validates :description, presence: true
  validates :status, presence: true
end
