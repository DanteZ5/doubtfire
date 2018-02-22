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

  include PgSearch

  pg_search_scope :global_search,
    against: [ :price, :address, :cooking, :knitting, :pet_sitting, :baby_sitting ],
    associated_against: {
      user: [ :first_name, :last_name, :email, :username, :age, :review, :description ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
