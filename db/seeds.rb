# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Booking.destroy_all
Grandma.destroy_all
User.destroy_all

users_attributes = [
{ email: 'raymonde@laposte.fr', password: 'kiki38' },
{ email: 'françoise@laposte.fr', password: 'michael44' },
{ email: 'jacqueline@laposte.fr', password: 'jerome56' },
{ email: 'yvette@laposte.fr', password: 'fabrice' }
]
users = User.create!(users_attributes)

grandma_attributes = [
{ user_id: users.second.id, price: 13, cooking: true },
{ user_id: users.third.id, price: 15, knitting: true }
]
grandmas = Grandma.create!(grandma_attributes)

booking_attributes = [
{ user_id: users.first.id, grandma_id: grandmas.first.id, status: "pending",
  start_date: "12/03/2018", end_date: "12/05/2018"  },
  { user_id: users.last.id, grandma_id: grandmas.second.id, status: "approved",
  start_date: "23/03/2018", end_date: "03/04/2018"  }
]
bookings = Booking.create!(booking_attributes)


