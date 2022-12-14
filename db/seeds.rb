User.delete_all
Photographer.delete_all
Review.delete_all

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
  email: "marc.yebra4@gmail.com",
  description: "I love taking fashion photos!",
  location: "Cambridge",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Marc/Marc.jpg",
  category: "Fashion"
)

photographer_2 = Photographer.find_or_create_by(
  first_name: "Charles",
  last_name: "Miller",
  email: "charles.miller@gmail.com",
  description: "Howdy y'all! I specialize in taking family portraits. My background in photography is vast and have worked in many other mediums. When it comes to my gear I shoot with a Canon 5D Mark IV with my 35mm lens. If I'm not taking photos I'm usually hiking, editing, or spending time at home with my dog! If you have any questions please send me an email. Look forward to working with you. ",
  location: "Downtown Boston",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Paxton/PaxtonProfilePhoto.jpg",
  category: "Family"
)

photographer_3 = Photographer.find_or_create_by(
  first_name: "Alex",
  last_name: "Champion",
  email: "alex.champion@gmail.com",
  description: "I love taking portraits!",
  location: "Beacon Hill",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Alex/Alex.jpg",
  category: "Portraits"
)

photographer_4 = Photographer.find_or_create_by(
  first_name: "Nick",
  last_name: "Ryder",
  email: "nick.ryder@gmail.com",
  description: "I love taking photos of pets!",
  location: "Allston",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Nick/Nick.jpg",
  category: "Pets"
)

photographer_5 = Photographer.find_or_create_by(
  first_name: "Michael",
  last_name: "Ladd",
  email: "michael.ladd@gmail.com",
  description: "I love taking sports photos!",
  location: "Back Bay",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Michael/Michael.jpg",
  category: "Sports"
)

photographer_6 = Photographer.find_or_create_by(
  first_name: "Molly",
  last_name: "Greene",
  email: "molly.greene@gmail.com",
  description: "I love taking engagement photos!",
  location: "Chinatown-Leather District",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Molly/Molly.jpg",
  category: "Engagement"
)

photographer_7 = Photographer.find_or_create_by(
  first_name: "Emily",
  last_name: "Rose",
  email: "emily.rose@gmail.com",
  description: "I love taking wedding photos!",
  location: "Fenway-Kenmore",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Emily/Emily.jpg",
  category: "Wedding"
)

photographer_8= Photographer.find_or_create_by(
  first_name: "Connor",
  last_name: "Rookie",
  email: "connor.rookie@gmail.com",
  description: "I love taking sports photos!",
  location: "Brighton",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Connor/Connor.jpg",
  category: "Graduation"
)

photographer_9 = Photographer.find_or_create_by(
  first_name: "Paul",
  last_name: "Newman",
  email: "paul.newman@gmail.com",
  description: "I love taking headshots of actors",
  location: "Jamaica Plain",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Paul/Paul.jpg",
  category: "Fitness"
)

photographer_10 = Photographer.find_or_create_by(
  first_name: "James",
  last_name: "Dean",
  email: "james.dean@gmail.com",
  description: "I love taking sports photos!",
  location: "Hyde Park",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/James/James.jpg",
  category: "Influencer/Celebrity"
)

photographer_11 = Photographer.find_or_create_by(
  first_name: "Ricky",
  last_name: "Morris",
  email: "ricky.morris@gmail.com",
  description: "I love taking sports photos!",
  location: "South Boston",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/James/James.jpg",
  category: "Food"
)

photographer_12 = Photographer.find_or_create_by(
  first_name: "Patrick",
  last_name: "Sanford",
  email: "patrick.sanford@gmail.com",
  description: "I love taking sports photos!",
  location: "Roxbury",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/James/James.jpg",
  category: "Events"
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


