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
{ email: 'raymonde@laposte.fr', password: 'kiki38', first_name: 'Raymonde',
  address:'Paris',
  photo: "https://www.gannett-cdn.com/-mm-/1d4f87c88586d269bff259ac42d530427b1c756f/c=123-0-2001-1412&r=x404&c=534x401/local/-/media/2017/05/05/DetroitFreeP/DetroitFreePress/636296157143304774-GettyImages-501537803.jpg" },
{ email: 'françoise@laposte.fr', password: 'michael44', first_name: 'Françoise',
  address:'Bourg Palette',
  photo: "https://mellowinthemidwest.files.wordpress.com/2014/11/grandma.jpg" },
{ email: 'jacqueline@laposte.fr', password: 'jerome56', first_name: 'Jacqueline',
  address:'Nantes',
  photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqOHO_ZFHFogOGU6QB6Lq1XWsVCUaQ7ZRr4C7x-HV19YGE8cuW" },
{ email: 'yvette@laposte.fr', password: 'fabrice', first_name: 'Yvette',
  address:'Montpellier',
  photo: "https://travisbarbour.files.wordpress.com/2013/04/grandma-cover.jpg" }
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
