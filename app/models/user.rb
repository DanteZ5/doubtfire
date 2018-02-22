class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings

  USER_TYPES = ["Grandma", "Customer"]

  def findgrandma
    grandmas = Grandma.all
    find_grandma = nil
    grandmas.each do |grandma|
      if grandma.user == self
        find_grandma = Grandma.find(grandma.id)
      end
    end
    return find_grandma
  end
end
