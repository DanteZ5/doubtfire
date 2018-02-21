class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings

  USER_TYPES = ["Grandma", "Customer"]

  def grandmaid
    grandmas = Grandma.all
    grandma_id = nil
    grandmas.each do |grandma|
      if grandma.user == current_user
        grandma_id = grandma.id
      end
    end
    return grandma_id
  end
end
