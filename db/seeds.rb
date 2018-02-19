# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Grandma.destroy_all
User.destroy_all

users_attributes = [
{ email: 'raymonde@laposte.fr', password: 'kiki38' },
{ email: 'françoise@laposte.fr', password: 'michael44' },
{ email: 'jacqueline@laposte.fr', password: 'jerome56' },
{ email: 'yvette@laposte.fr', password: 'fabrice' }
]
users = User.create!(users_attributes)

p users.second.id

grandma_attributes = [
{ user_id: users.second.id, price: 13, cooking: true },
{ user_id: users.third.id, price: 15, knitting: true }
]
grandmas = Grandma.create!(grandma_attributes)


