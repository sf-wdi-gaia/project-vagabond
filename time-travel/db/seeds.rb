# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

p1 = Post.new(
  {title:"The Great San Francisco Earthquake",description:"Stirred by starlight tendrils of gossamer clouds Vangelis at the edge of forever Cambrian explosion. Globular star cluster Tunguska event Sea of Tranquility. Brain is the seed of intelligence intelligent beings? Hundreds of thousands emerged into consciousness, radio telescope a very small stage in a vast cosmic arena something incredible is waiting to be known globular star cluster the ash of stellar alchemy vanquish the impossible Hypatia decipherment tingling of the spine intelligent beings brain is the seed of intelligence. Two ghostly white figures in coveralls and helmets are soflty dancing, the only home we've ever known Flatland hearts of the stars.",
image:"http://earthquake.usgs.gov/regional/nca/1906/18april/images/sfburning.gif"}
  )
p1.post_date = Date.new(1906,4,18)
p1.save
p2 = Post.new(
  {title:"Woodstock",description:"Not a sunrise but a galaxyrise? Corpus callosum galaxies from which we spring Euclid dispassionate extraterrestrial observer Jean-François Champollion rich in mystery Hypatia tendrils of gossamer clouds the sky calls to us of brilliant syntheses vastness is bearable only through love. Another world preserve and cherish that pale blue dot. A mote of dust suspended in a sunbeam the ash of stellar alchemy, tingling of the spine rings of Uranus hundreds of thousands Orion's sword. Emerged into consciousness dispassionate extraterrestrial observer, Drake Equation, network of wormholes. Prime number cosmos emerged into consciousness? Colonies.",
image:"http://jessicaharper.com/cms/wp-content/uploads/2015/04/Woodstock2.jpg"}
  )
p2.post_date = Date.new(1969,8,15)
p2.save
p3 = Post.new(
  {title:"First Telegraphic Message",description:"What Hath God Wrought?  Bits of moving fluff concept of the number one the only home we've ever known radio telescope. Laws of physics, the sky calls to us galaxies venture rogue decipherment, hearts of the stars. Something incredible is waiting to be known courage of our questions rings of Uranus birth star stuff harvesting star light rings of Uranus a mote of dust suspended in a sunbeam cosmic fugue quasar as a patch of light. Paroxysm of global death! The sky calls to us hundreds of thousands. At the edge of forever are creatures of the cosmos. A still more glorious dawn awaits finite but unbounded, something incredible is waiting to be known a billion trillion inconspicuous motes of rock and gas something incredible is waiting to be known colonies gathered by gravity.",
image:"http://www.telegraph-office.com/bw_images/bunnell_mechanical.jpg"}
  )
p3.post_date = Date.new(1844,5,24)
p3.save
p4 = Post.new(
  {title:"Alexander conquers Eqypt",description:"Stirred by starlight tendrils of gossamer clouds Vangelis at the edge of forever Cambrian explosion. Globular star cluster Tunguska event Sea of Tranquility. Brain is the seed of intelligence intelligent beings? Hundreds of thousands emerged into consciousness, radio telescope a very small stage in a vast cosmic arena something incredible is waiting to be known globular star cluster the ash of stellar alchemy vanquish the impossible Hypatia decipherment tingling of the spine intelligent beings brain is the seed of intelligence. Two ghostly white figures in coveralls and helmets are soflty dancing, the only home we've ever known Flatland hearts of the stars.",
image:"http://www.mitchellteachers.org/WorldHistory/AncientGreece/Images/AlexanderSphinxGizaTrans.jpg"}
  )
p4.post_date = Date.new(-331,1,1)
p4.save