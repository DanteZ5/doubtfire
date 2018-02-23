class AddHoursToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :date, :string
    add_column :bookings, :start_hour, :string
    add_column :bookings, :end_hour, :string
  end
end
