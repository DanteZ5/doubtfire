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
  address:'Paris', user_type: "Grandma", last_name: "Dugenoux", review: 4,
  description: "Tu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec
  adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de
  Catone; aut enim nemo, quod quidem magis credo, aut si quisquam,
   ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum,
  videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.",
  remote_photo_url: "http://www.digitaljournal.com/img/5/6/2/4/4/2/i/8/6/8/o/Grandma_37.JPG",
  age: 78 },
{ email: 'francoise@wanadoo.fr', password: '123456', first_name: 'Françoise',
  address:'Rennes', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Constituendi autem sunt qui sint in amicitia fines et quasi termini diligendi.
  De quibus tres video sententias ferri, quarum nullam probo, unam,
  ut eodem modo erga amicum adfecti simus, quo erga nosmet ipsos, alteram,
  ut nostra in amicos benevolentia illorum erga nos benevolentiae pariter aequaliterque respondeat,
  tertiam, ut, quanti quisque se ipse facit, tanti fiat ab amicis.",
  remote_photo_url: "https://az616578.vo.msecnd.net/files/2016/03/18/635939287221105035-638973208_grandma17.jpg",
  age: 76 },
{ email: 'jacqueline@wanadoo.fr', password: '123456', first_name: 'Jacqueline',
  address:'Rennes', user_type: "Grandma", last_name: "Dugenoux", review: 3,
  description: "Haec et huius modi quaedam innumerabilia ultrix facinorum impiorum
  bonorumque praemiatrix aliquotiens operatur Adrastia atque utinam semper quam vocabulo
  duplici etiam Nemesim appellamus: ius quoddam sublime numinis efficacis,
  humanarum mentium opinione lunari circulo superpositum, vel ut definiunt alii,
  substantialis tutela generali potentia partilibus praesidens fatis,
  quam theologi veteres fingentes Iustitiae filiam ex abdita quadam aeternitate
  tradunt omnia despectare terrena.",
  remote_photo_url: "https://utahvalley360.com/wp-content/uploads/2013/09/oramaeheadshot.jpg",
  age: 70 },
{ email: 'yvette@wanadoo.fr', password: '123456', first_name: 'Yvette',
  address:'Montpellier', user_type: "Grandma", last_name: "Dugenoux", review: 2,
  description: "Sed quid est quod in hac causa maxime homines admirentur et
  reprehendant meum consilium, cum ego idem antea multa decreverim,
  que magis ad hominis dignitatem quam ad rei publicae necessitatem
  pertinerent? Supplicationem quindecim dierum decrevi sententia mea.
  Rei publicae satis erat tot dierum quot C. Mario ; dis immortalibus non erat
  exigua eadem gratulatio quae ex maximis bellis. Ergo ille cumulus dierum
  hominis est dignitati tributus.",
  remote_photo_url: "https://3.bp.blogspot.com/-qv77t5owRBI/WScUo7h1mbI/AAAAAAAAbn8/JY0LZ8HaQI4T7EIQSCGDuFnDbTuPb8c5QCLcB/s1600/IMG_6493.JPG",
  age: 73 },
{ email: 'geraldine@wanadoo.fr', password: '123456', first_name: 'Géraldine',
  address:'Lyon', user_type: "Grandma", last_name: "Dugenoux", review: 5,
  description: "Siquis enim militarium vel honoratorum aut nobilis inter suos
  rumore tenus esset insimulatus fovisse partes hostiles, iniecto onere
  catenarum in modum beluae trahebatur et inimico urgente vel nullo, quasi
  sufficiente hoc solo, quod nominatus esset aut delatus aut postulatus,
  capite vel multatione bonorum aut insulari solitudine damnabatur.",
  remote_photo_url: "http://2.bp.blogspot.com/-PGQbwleVMuY/Tz80xqa9gaI/AAAAAAAAAv4/aBtWCp5oWJU/s1600/Grandma%2527s+new+hair+cut+feb+002.jpg",
  age: 74 },
{ email: 'elisabeth@wanadoo.fr', password: '123456', first_name: 'Elisabeth',
  address:'Lille', user_type: "Grandma", last_name: "Dugenoux", review: 4,
  description: "At nunc si ad aliquem bene nummatum tumentemque ideo honestus
  advena salutatum introieris, primitus tamquam exoptatus suscipieris et
  interrogatus multa coactusque mentiri, miraberis numquam antea visus summatem
  virum tenuem te sic enixius observantem, ut paeniteat ob haec bona tamquam
  praecipua non vidisse ante decennium Romam.",
  remote_photo_url: "http://littlepinkstudio.typepad.com/.a/6a00d83453a88469e201a3fb67e159970b-pi",
  age: 72 },
{ email: 'martine@wanadoo.fr', password: '123456', first_name: 'Martine',
  address:'Nice', user_type: "Grandma", last_name: "Dugenoux", review: 4,
  description: "Incenderat autem audaces usque ad insaniam homines ad haec,
  quae nefariis egere conatibus, Luscus quidam curator urbis subito visus:
  eosque ut heiulans baiolorum praecentor ad expediendum quod orsi sunt incitans
  vocibus crebris. qui haut longe postea ideo vivus exustus est.",
  remote_photo_url: "https://farm4.static.flickr.com/3480/3895535691_101496c0eb_b.jpg",
  age: 75 },
{ email: 'mireille@wanadoo.fr', password: '123456', first_name: 'Mireille',
  address:'Dunkerque', user_type: "Grandma", last_name: "Dugenoux", review: 3,
  description: "Ideo urbs venerabilis post superbas efferatarum gentium cervices
  oppressas latasque leges fundamenta libertatis et retinacula sempiterna velut
  frugi parens et prudens et dives Caesaribus tamquam liberis suis regenda
  patrimonii iura permisit.",
  remote_photo_url: "https://i1.wp.com/comedyzone.com/wp-content/uploads/2016/08/grandma-lee-small.jpg?fit=1200%2C1200&ssl=1",
  age: 78 },
{ email: 'dante@gmail.com', password: '123456', first_name: 'Dante',
  address:'Paris', user_type: "Customer", last_name: "Planterose", review: 5,
  description: "Sed laeditur hic coetuum magnificus splendor levitate paucorum
  incondita, ubi nati sunt non reputantium, sed tamquam indulta licentia vitiis
  ad errores lapsorum ac lasciviam. ut enim Simonides lyricus docet,
  beate perfecta ratione vieturo ante alia patriam esse convenit gloriosam.",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/DanteZ5",
  age: 34 },
{ email: 'nassim@gmail.com', password: '123456', first_name: 'Nassim',
  address:'Paris', user_type: "Customer", last_name: "Mezouar", review: 5,
  description: "Sed si ille hac tam eximia fortuna propter utilitatem rei
  publicae frui non properat, ut omnia illa conficiat, quid ego, senator,
  facere debeo, quem, etiamsi ille aliud vellet, rei publicae consulere oporteret?",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/jbchenut",
  age: 33 },
{ email: 'thibaud@gmail.com', password: '123456', first_name: 'Thibaud',
  address:'Paris', user_type: "Customer", last_name: "Vuitton", review: 5,
  description: "Haec dum oriens diu perferret, caeli reserato tepore Constantius
  consulatu suo septies et Caesaris ter egressus Arelate Valentiam petit,
  in Gundomadum et Vadomarium fratres Alamannorum reges arma moturus,
  quorum crebris excursibus vastabantur confines limitibus terrae Gallorum.",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/tvuit",
  age: 33 },
{ email: 'maximilien@gmail.com', password: '123456', first_name: 'Maximilien',
  address:'Paris', user_type: "Customer", last_name: "Rufin", review: 5,
  description: "Quam ob rem cave Catoni anteponas ne istum quidem ipsum, quem
  Apollo, ut ais, sapientissimum iudicavit; huius enim facta,
  illius dicta laudantur. De me autem, ut iam cum utroque vestrum loquar, sic habetote.",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/MaxR7589",
  age: 28 },
]
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
