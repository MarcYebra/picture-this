require 'pry'
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
  description: "I love taking photos of families!",
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


