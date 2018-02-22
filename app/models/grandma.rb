class Grandma < ApplicationRecord
  before_save :default_values
  belongs_to :user
  has_many :bookings
  validate :has_skill?
  def has_skill?
    :baby_sitting ||
    :cooking ||
    :knitting ||
    :pet_sitting
  end

  def default_values
    self.address ||= self.user.address
  end
end
