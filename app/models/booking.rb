class Booking < ApplicationRecord
  before_save :default_values
  belongs_to :grandma
  belongs_to :user


  def default_values
    self.status ||= 'pending'
  end
end
