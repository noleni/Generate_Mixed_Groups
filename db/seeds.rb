require "open-uri"

Membership.destroy_all
puts 'Les memberships sont détruits'

Caracter.destroy_all
puts 'Les persos sont détruits'

Group.destroy_all
puts 'Les groupes sont détruits'

chihiro_file = URI.open('https://nanouk-ec.com/thumb/?q=90&w=2560&h=2048&src=/fichier/p_film/184/voyage.de.chihiro.jpg&f=jpg')
mononoke_file = URI.open("https://spoutnik.info/wp-content/uploads/2016/04/1417428504_the-great-japanese-epic-from-studio-ghibli-princess-mononoke-1997-princess-mononoke.jpeg")
koanashi_file = URI.open("https://i.pinimg.com/564x/68/e0/c5/68e0c5f2f089b98cc3d34249c6d3b3e3.jpg")
ashitaka_file = URI.open("https://steamuserimages-a.akamaihd.net/ugc/861729145358352175/BE8B0D3E970646E456813100757A64BA4EE4016E/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
kiki_file = URI.open("https://i.ytimg.com/vi/JXZvnmlkp_I/maxresdefault.jpg")
jiji_file = URI.open("https://dailygeekshow.com/wp-content/uploads/sites/2/2016/05/anecdotes-kiki-jiji.jpg")


chihiro = Caracter.new(
  name: 'Chihiro',
  movie: 'Le Voyage de Chihiro',
  status: true
)
chihiro.photo.attach(
  io: chihiro_file,
  filename: "nes.jpg",
  content_type: "image/jpg")
chihiro.save

koanashi = Caracter.new(
  name: 'Koanashi',
  movie: 'Le Voyage de Chihiro',
  status: true
)
koanashi.photo.attach(io: koanashi_file, filename: "nes.png", content_type: "image/png")
koanashi.save

mononoke = Caracter.new(
  name: 'San',
  movie: 'Princess Mononoke',
  status: true
)
mononoke.photo.attach(io: mononoke_file, filename: "nes.png", content_type: "image/png")
mononoke.save

ashitaka = Caracter.new(
  name: 'Ashitaka',
  movie: 'Princess Mononoke',
  status: true
)
ashitaka.photo.attach(io: ashitaka_file, filename: "nes.png", content_type: "image/png")
ashitaka.save

kiki = Caracter.new(
  name: 'Kiki',
  movie: 'Kiki la petite sorcière',
  status: true
)
kiki.photo.attach(io: kiki_file, filename: "nes.png", content_type: "image/png")
kiki.save

jiji = Caracter.new(
  name: 'Jiji',
  movie: 'Kiki la petite sorcière',
  status: true
)
jiji.photo.attach(io: jiji_file, filename: "nes.png", content_type: "image/png")
jiji.save

puts 'Personnages créés'

(Caracter.all.count)/2.times do
  Group.create(
    status: 'available'
  )
end


puts 'Les groupes sont créés'


Membership.destroy_all
puts 'Les memberships sont détruits'


Group.destroy_all
puts 'Les groupes sont détruits'
