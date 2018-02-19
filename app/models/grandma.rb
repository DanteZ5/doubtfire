class Grandma < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validate :has_skill?
  def has_skill?
    :baby_sitting ||
    :cooking ||
    :knitting ||
    :pet_sitting
  end
end
