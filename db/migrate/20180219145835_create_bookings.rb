class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :start_date
      t.string :end_date
      t.references :grandma, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
