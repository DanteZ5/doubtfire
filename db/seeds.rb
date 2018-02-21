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
{ email: 'raymonde@wanadoo.fr', password: '123456', first_name: 'Raymonde',
  address:'Paris', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "http://www.digitaljournal.com/img/5/6/2/4/4/2/i/8/6/8/o/Grandma_37.JPG",
  age: 78 },
{ email: 'françoise@wanadoo.fr', password: '123456', first_name: 'Françoise',
  address:'Bourg Palette', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://az616578.vo.msecnd.net/files/2016/03/18/635939287221105035-638973208_grandma17.jpg",
  age: 78 },
{ email: 'jacqueline@wanadoo.fr', password: '123456', first_name: 'Jacqueline',
  address:'Nantes', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://utahvalley360.com/wp-content/uploads/2013/09/oramaeheadshot.jpg",
  age: 78 },
{ email: 'yvette@wanadoo.fr', password: '123456', first_name: 'Yvette',
  address:'Montpellier', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://3.bp.blogspot.com/-qv77t5owRBI/WScUo7h1mbI/AAAAAAAAbn8/JY0LZ8HaQI4T7EIQSCGDuFnDbTuPb8c5QCLcB/s1600/IMG_6493.JPG",
  age: 78 },
{ email: 'geraldine@wanadoo.fr', password: '123456', first_name: 'Géraldine',
  address:'Lyon', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "http://2.bp.blogspot.com/-PGQbwleVMuY/Tz80xqa9gaI/AAAAAAAAAv4/aBtWCp5oWJU/s1600/Grandma%2527s+new+hair+cut+feb+002.jpg",
  age: 78 },
{ email: 'elisabeth@wanadoo.fr', password: '123456', first_name: 'Elisabeth',
  address:'Lille', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "http://littlepinkstudio.typepad.com/.a/6a00d83453a88469e201a3fb67e159970b-pi",
  age: 78 },
{ email: 'martine@wanadoo.fr', password: '123456', first_name: 'Martine',
  address:'Nice', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://farm4.static.flickr.com/3480/3895535691_101496c0eb_b.jpg",
  age: 78 },
{ email: 'mireille@wanadoo.fr', password: '123456', first_name: 'Mireille',
  address:'Dunkerque', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://i1.wp.com/comedyzone.com/wp-content/uploads/2016/08/grandma-lee-small.jpg?fit=1200%2C1200&ssl=1",
  age: 78 },
{ email: 'dante@gmail.com', password: '123456', first_name: 'Dante',
  address:'Paris', user_type: "Customer", last_name: "Planterose", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/DanteZ5",
  age: 34 },
{ email: 'nassim@gmail.com', password: '123456', first_name: 'Nassim',
  address:'Paris', user_type: "Customer", last_name: "Mezouar", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/jbchenut",
  age: 33 },
{ email: 'thibaud@gmail.com', password: '123456', first_name: 'Thibaud',
  address:'Paris', user_type: "Customer", last_name: "Vuitton", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/tvuit",
  age: 33 },
{ email: 'maximilien@gmail.com', password: '123456', first_name: 'Maximilien',
  address:'Paris', user_type: "Customer", last_name: "Rufin", review: 5,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/MaxR7589",
  age: 28 },
]

# raymonde est user avec
# francoise est grandma
# jacqueline est grandma avec
# yvette est user

users = User.create!(users_attributes)

grandma_attributes = [
{ user_id: users[0].id, price: 13, cooking: true },
{ user_id: users[1].id, price: 13, cooking: true },
{ user_id: users[2].id, price: 15, knitting: true, cooking: true,
  pet_sitting: true, baby_sitting: true },
{ user_id: users[3].id, price: 15, knitting: true, cooking: true },
{ user_id: users[4].id, price: 12, baby_sitting: true, cooking: true },
{ user_id: users[5].id, price: 12, pet_sitting: true },
{ user_id: users[6].id, price: 18, baby_sitting: true },
{ user_id: users[7].id, price: 18, baby_sitting: true, pet_sitting: true },
]
grandmas = Grandma.create!(grandma_attributes)

booking_attributes = [
{ user_id: users.last.id, grandma_id: grandmas.first.id, status: "validate",
  start_date: "12/03/2018", end_date: "14/03/2018"  },
{ user_id: users.last.id, grandma_id: grandmas.first.id, status: "declined",
  start_date: "15/03/2018", end_date: "17/05/2018"  },
{ user_id: users.last.id, grandma_id: grandmas.first.id, status: "pending",
  start_date: "18/03/2018", end_date: "20/05/2018"  },
{ user_id: users.last.id, grandma_id: grandmas.second.id, status: "pending",
  start_date: "23/03/2018", end_date: "25/03/2018"  },
{ user_id: users.last.id, grandma_id: grandmas.second.id, status: "pending",
  start_date: "27/03/2018", end_date: "29/03/2018"  }
]
bookings = Booking.create!(booking_attributes)
