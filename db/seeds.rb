# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



photographer_1 = Photographer.create!(
  first_name: "Marc",
  last_name: "Yebra",
  email: "marc@gmail.com",
  description: "I love taking fashion photos!",
  location: "Cambridge",
  profile_photo: "app/assets/images/Marc.jpg"
)

photographer_2 = Photographer.create!(
  first_name: "Paxton",
  last_name: "Layman",
  email: "Paxton@gmail.com",
  description: "I love taking photos of families!",
  location: "Downtown Boston",
  profile_photo: "app/assets/images/Paxton.jpg"
)

photographer_3 = Photographer.create!(
  first_name: "Alex",
  last_name: "Champion",
  email: "alex@gmail.com",
  description: "I love taking portraits!",
  location: "Beacon Hill",
  profile_photo: "app/assets/images/Alex.jpg"
)


