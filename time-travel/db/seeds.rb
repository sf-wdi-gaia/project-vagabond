# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Period.destroy_all
Post.destroy_all
User.destroy_all

User.create([
  {first_name:"Justin",last_name:"Timberlake",email:"jt@jt.com",image:"http://donatered-asset.s3.amazonaws.com/assets/default/default_user-884fcb1a70325256218e78500533affb.jpg", password: "password"},
  {first_name:"Annabelle",last_name:"Thaddeus",email:"abt@gotexas.com",image:"http://donatered-asset.s3.amazonaws.com/assets/default/default_user-884fcb1a70325256218e78500533affb.jpg", password: "password"}
  ])

Post.create([
  {title:"The Great San Francisco Earthquake",description:"Stirred by starlight tendrils of gossamer clouds Vangelis at the edge of forever Cambrian explosion. Globular star cluster Tunguska event Sea of Tranquility. Brain is the seed of intelligence intelligent beings? Hundreds of thousands emerged into consciousness, radio telescope a very small stage in a vast cosmic arena something incredible is waiting to be known globular star cluster the ash of stellar alchemy vanquish the impossible Hypatia decipherment tingling of the spine intelligent beings brain is the seed of intelligence. Two ghostly white figures in coveralls and helmets are soflty dancing, the only home we've ever known Flatland hearts of the stars.",
image:"http://earthquake.usgs.gov/regional/nca/1906/18april/images/sfburning.gif", post_date: Date.new(1906,4,18)},
  {title:"Woodstock",description:"Not a sunrise but a galaxyrise? Corpus callosum galaxies from which we spring Euclid dispassionate extraterrestrial observer Jean-François Champollion rich in mystery Hypatia tendrils of gossamer clouds the sky calls to us of brilliant syntheses vastness is bearable only through love. Another world preserve and cherish that pale blue dot. A mote of dust suspended in a sunbeam the ash of stellar alchemy, tingling of the spine rings of Uranus hundreds of thousands Orion's sword. Emerged into consciousness dispassionate extraterrestrial observer, Drake Equation, network of wormholes. Prime number cosmos emerged into consciousness? Colonies.",
image:"http://jessicaharper.com/cms/wp-content/uploads/2015/04/Woodstock2.jpg",post_date:Date.new(1969,8,15)},
  {title:"First Telegraphic Message",description:"What Hath God Wrought?  Bits of moving fluff concept of the number one the only home we've ever known radio telescope. Laws of physics, the sky calls to us galaxies venture rogue decipherment, hearts of the stars. Something incredible is waiting to be known courage of our questions rings of Uranus birth star stuff harvesting star light rings of Uranus a mote of dust suspended in a sunbeam cosmic fugue quasar as a patch of light. Paroxysm of global death! The sky calls to us hundreds of thousands. At the edge of forever are creatures of the cosmos. A still more glorious dawn awaits finite but unbounded, something incredible is waiting to be known a billion trillion inconspicuous motes of rock and gas something incredible is waiting to be known colonies gathered by gravity.",
image:"http://www.telegraph-office.com/bw_images/bunnell_mechanical.jpg",post_date:Date.new(1844,5,24)},
  {title:"Alexander conquers Eqypt",description:"Stirred by starlight tendrils of gossamer clouds Vangelis at the edge of forever Cambrian explosion. Globular star cluster Tunguska event Sea of Tranquility. Brain is the seed of intelligence intelligent beings? Hundreds of thousands emerged into consciousness, radio telescope a very small stage in a vast cosmic arena something incredible is waiting to be known globular star cluster the ash of stellar alchemy vanquish the impossible Hypatia decipherment tingling of the spine intelligent beings brain is the seed of intelligence. Two ghostly white figures in coveralls and helmets are soflty dancing, the only home we've ever known Flatland hearts of the stars.",
image:"http://www.mitchellteachers.org/WorldHistory/AncientGreece/Images/AlexanderSphinxGizaTrans.jpg",post_date:Date.new(-332,1,1)}
]);


Period.create([
 {name:"Machine Age",start_time:Date.new(1880), end_time:Date.new(1945)},
 {name:"World War I",start_time:Date.new(1914), end_time:Date.new(1918)},
 {name:"Roaring Twenties",start_time:Date.new(1920), end_time:Date.new(1929)},
 {name:"Victorian Era",start_time:Date.new(1837), end_time:Date.new(1901)},
 {name:"Ancient Times",start_time:Date.new(-4700), end_time:Date.new(425)}
]);

@users = User.all
@posts = Post.all
@periods = Period.all

@posts[0].user_id = @users[0].id
@posts[1].user_id = @users[0].id
@posts[2].user_id = @users[1].id
@posts[3].user_id = @users[1].id

@posts.each do |post|
  @periods.each do |period|
    if period.start_time < post.post_date && period.end_time >= post.post_date
      post.period_id = period.id
    end
  end
  post.save
end

@periods[0].user_id = @users[0].id
@periods[1].user_id = @users[0].id
@periods[2].user_id = @users[1].id
@periods[3].user_id = @users[1].id
@periods[4].user_id = @users[0].id

@periods.each do |period|
  period.save
end




