class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :description, presence: true
  validates :stars, presence: true, inclusion: { in: (1..5) }
  validate :validate_one_review_only

  def validate_one_review_only
    errors.add(:base, "errrrr") if self.class.joins(:booking).where(bookings: {user: user}).exists?
  end


end
