class Grandma < ApplicationRecord
  before_validation :default_values
  belongs_to :user
  has_many :bookings
  validate :has_skill?
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  before_save :set_average_note

  def has_skill?
    :baby_sitting ||
    :cooking ||
    :knitting ||
    :pet_sitting
  end

  def default_values
    self.address ||= self.user.address
  end

  def set_average_note
    self.average_note = (self.sum_notes.to_f / self.count_notes).round ||= 5
  end

  def new_vote(rating)
    self.sum_notes += rating
    self.count_notes += 1
    self.save
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
