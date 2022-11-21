
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#### User ####
user_1 = User.create(
  email: "user1@gmail.com",
  password: "password",
  username: "username_for_user1",
  location: "Cambridge"
)

user_2 = User.create(
  email: "user2@gmail.com",
  password: "password",
  username: "username_for_user2",
  location: "Allston"
)

user_3 = User.create(
  email: "user3@gmail.com",
  password: "password",
  username: "username_for_user3",
  location: "Beacon Hill"
)

##### Photographers#####
photographer_1 = Photographer.find_or_create_by(
  first_name: "Marc",
  last_name: "Yebra",
  email: "marc@gmail.com",
  description: "I love taking fashion photos!",
  location: "Cambridge",
  profile_photo: "app/assets/images/Marc.jpg"
)

photographer_2 = Photographer.find_or_create_by(
  first_name: "Paxton",
  last_name: "Layman",
  email: "Paxton@gmail.com",
  description: "Howdy y'all! I specialize in taking family portraits. My background in photography is vast and have worked in many other mediums. When it comes to my gear I shoot with a Canon 5D Mark IV with my 35mm lens. If I'm not taking photos I'm usually hiking, editing, or spending time at home with my dog! If you have any questions please send me an email. Look forward to working with you. ",
  location: "Downtown Boston",
  profile_photo: "app/assets/images/Paxton.jpg"
)

photographer_3 = Photographer.find_or_create_by(
  first_name: "Alex",
  last_name: "Champion",
  email: "alex@gmail.com",
  description: "I love taking portraits!",
  location: "Beacon Hill",
  profile_photo: "app/assets/images/Alex.jpg"
)

photographer_4 = Photographer.find_or_create_by(
  first_name: "Nick",
  last_name: "Ryder",
  email: "nick@gmail.com",
  description: "I love taking photos of pets!",
  location: "Allston",
)

photographer_5 = Photographer.find_or_create_by(
  first_name: "Matthew",
  last_name: "Ladd",
  email: "matthew@gmail.com",
  description: "I love taking sports photos!",
  location: "Back Bay",
)

photographer_6 = Photographer.find_or_create_by(
  first_name: "Molly",
  last_name: "Greene",
  email: "molly@gmail.com",
  description: "I love taking engagement photos!",
  location: "Back Bay",
)

photographer_7 = Photographer.find_or_create_by(
  first_name: "Emily",
  last_name: "Rose",
  email: "emily@gmail.com",
  description: "I love taking wedding photos!",
  location: "Back Bay",
)

photographer_8= Photographer.find_or_create_by(
  first_name: "Connor",
  last_name: "Rookie",
  email: "Connor@gmail.com",
  description: "I love taking sports photos!",
  location: "Back Bay",
)

photographer_9 = Photographer.find_or_create_by(
  first_name: "Paul",
  last_name: "Newman",
  email: "matthew@gmail.com",
  description: "I love taking headshots of actors",
  location: "Back Bay",
)

photographer_10 = Photographer.find_or_create_by(
  first_name: "James",
  last_name: "Dean",
  email: "james@gmail.com",
  description: "I love taking sports photos!",
  location: "Back Bay",
)

#### Reviews ######
review_1 = Review.find_or_create_by(
  title: "Dream Photo Shoot",
  body: "This was such a fun day and look forward to booking this photographer again!",
  rating: 5
)

review_2 = Review.find_or_create_by(
  title: "What a blast!t",
  body: "This photographer really knows their stuff!!",
  rating: 5
)

review_3 = Review.find_or_create_by(
  title: "Picture Perfect",
  body: "Honestly one of the best experiences of my life. This photographer made me feel very confident and comfortable, which is very rare for someone to do. Highly recommed booking this photographer!",
  rating: 5
  
)


