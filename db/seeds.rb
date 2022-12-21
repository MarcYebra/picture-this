User.delete_all
Photographer.delete_all
Review.delete_all

#### User ####
user_1 = User.create(
  email: "marc@gmail.com",
  password: "password",
  username: "marc_klaus",
  location: "Cambridge"
)

user_2 = User.create(
  email: "ashley@gmail.com",
  password: "password",
  username: "aashley12",
  location: "Allston"
)

user_3 = User.create(
  email: "richard@gmail.com",
  password: "password",
  username: "richard.white12",
  location: "Beacon Hill"
)

##### Photographers#####
photographer_1 = Photographer.find_or_create_by(
  first_name: "Marc",
  last_name: "Yebra",
  email: "marc.yebra4@gmail.com",
  description: "I've been a fashion photographer for the past five years and still find myself discovering new techniques and approaches to tackling projects. I love using color, different fabrics, and movement to showcase the beauty of fashion. When I'm not taking pictures or editing, you can find me running, playing tennis, at coffee shops, or at the movie theaters. I'm originally from Austin, TX so after our shoot is over let's find some good BBQ!",
  location: "Cambridge",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Marc/Marc.jpg",
  category: "Fashion"
)

photographer_2 = Photographer.find_or_create_by(
  first_name: "Charles",
  last_name: "Miller",
  email: "charles.miller@gmail.com",
  description: "Howdy y'all! I specialize in taking family portraits. My background in photography is vast and I've worked in many other mediums. When it comes to my gear I shoot with a Canon 5D Mark IV with my 35mm lens. If I'm not taking photos I'm usually hiking, editing, or spending time at home with my dog and family! If you have any questions please send me an email. I look forward to working with you!",
  location: "Downtown Boston",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Paxton/PaxtonProfilePhoto.jpg",
  category: "Family"
)

photographer_3 = Photographer.find_or_create_by(
  first_name: "Alex",
  last_name: "Champion",
  email: "alex.champion@gmail.com",
  description: "Hi there! I know getting headshots can be dreadful, which is why people come to me for their portraits. I like to make my photo shoots fun and relaxed. I will try and do as much work for you as possible so that all you have to do is bring your smiling face and a positive attitude! My turn around dates tend to be fast because I know how important it is for you to see/use the images. If you have any questions or concerns please reach me by email. Hope to see you in my studio soon!",
  location: "Beacon Hill",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Alex/Alex.jpg",
  category: "Portrait"
)

photographer_4 = Photographer.find_or_create_by(
  first_name: "Nick",
  last_name: "Ryder",
  email: "nick.ryder@gmail.com",
  description: "I have been a proud owner of many pets throughout my life. Dogs, cats, snakes, bunnies, frogs, lizards, birds, the list honestly can go on forever. Since I was a kid, there were always some sort of animal following me home. You want to show the world how cute your pet is, I completley understand! I hope to meet your adorable creature soon!",
  location: "Allston",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Nick/Nick.jpg",
  category: "Pet"
)

photographer_5 = Photographer.find_or_create_by(
  first_name: "Michael",
  last_name: "Ladd",
  email: "michael.ladd@gmail.com",
  description: "Since the age of five my father signed me up for tball and I haven't put my glove down since. After I finished playing college baseball at Boston University, I decided to stay a part of the sports world in any way I could. Mixing my passion for photography with my love of sports, I can proudly say I've been running my own sports photography business for seven years. As you can see from my portfolio, I've photographed many athletes from all ranges of sports. If you have any questions please reach out. I'm up for any challenge. Game on! ",
  location: "Back Bay",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Michael/Michael.jpg",
  category: "Sport"
)

photographer_6 = Photographer.find_or_create_by(
  first_name: "Molly",
  last_name: "Greene",
  email: "molly.greene@gmail.com",
  description: "Taking engagement photos has been my passion for the past ten years. I enjoy being a part of special moments and working with couples to create images that reflect their love for each other! Boston is a great city to explore for cute engagement photos. Please reach out for more information! ",
  location: "Chinatown-Leather District",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Molly/Molly.jpg",
  category: "Engagement"
)

photographer_7 = Photographer.find_or_create_by(
  first_name: "Emily",
  last_name: "Rose",
  email: "emily.rose@gmail.com",
  description: "Who doesn't love weddings? My mother and father ran their own wedding-planning business for nearly thirty years. I grew up surrounded by the happiest moments of peoples lives and decided to do my part and contribute. I've been working as a professional wedding photographer for seven years and it still never gets old. Weddings are important and require lots of planning and communication. I know how stressful and costly weddings can be. I'm understanding of what goes into planning a wedding, which is why I would love to help and take stunning photos that you will remember for life!",
  location: "Fenway-Kenmore",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Emily/Emily.jpg",
  category: "Wedding"
)

photographer_8= Photographer.find_or_create_by(
  first_name: "Connor",
  last_name: "Rookie",
  email: "connor.rookie@gmail.com",
  description: "I've been working as a professional photographer for the last twelve years. It's been only recently that I've focused in on graduation sessions. Graduating is such a monumental moment and I want to be a part of that with you. Email me to schedule book a shoot!  ",
  location: "Brighton",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Connor/Connor.jpg",
  category: "Graduation"
)

photographer_9 = Photographer.find_or_create_by(
  first_name: "Paul",
  last_name: "Newman",
  email: "paul.newman@gmail.com",
  description: "I earned my bachelor's degree in Exercise Science in 2015 from the University of Texas at Austin. Photography and fitness have a lot of similarities. They're both heavily reliant on movement, technique, flexibility, and creativity. I carry my passion for fitness into my skills of photography. You're in shape and you work hard, don't you want to hire a photographer who can keep up with you? Let's get after it!",
  location: "Jamaica Plain",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Paul/Paul.jpg",
  category: "Fitness"
)

photographer_10 = Photographer.find_or_create_by(
  first_name: "James",
  last_name: "Dean",
  email: "james.dean@gmail.com",
  description: "I always tell people I have the best job in the world because I get to create images with talented, motivated indiviuals. Being a celebrity photographer has granted me unique opportunities to peak inside a world that I've always found mysterious, yet interesting. Through my lens and creative vision, I want to reveal to the world the truth behind these iconic names. Originally from Los Angeles, I currently reside in the greater Boston area.",
  location: "Beacon Hill",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/James/James.jpg",
  category: "Celebrity"
)

photographer_11 = Photographer.find_or_create_by(
  first_name: "Anna",
  last_name: "Wong",
  email: "anna.wong@gmail.com",
  description: "I grew up spending hours in the kitchen with my mom. My mother was the best cook I knew and she inspired me every day to continue learning about different foods and recipies. I carried my love for cooking to culinary school and now work part time at a well known restuarnt in Boston. However, when I don't have an apron around my waist, you'll see me carrying a camera around my shoulder. Wether you need a more professional menu for your resturant or you want eye-catching photos for your cook book, I'm the photographer for you!",
  location: "South Boston",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Anna/Anna+Wong.jpg",
  category: "Food"
)

photographer_12 = Photographer.find_or_create_by(
  first_name: "Jessica",
  last_name: "Smith",
  email: "jessica.smith@gmail.com",
  description: "Hi! If you have a work event, party, fundraiser, or any sort of gathering you'd like photographed, please reach out so I can learn more! I enjoy getting to walk around and capture the perfect little moments that we often overlook. With an eye for candid moments, allow me to be the photographer that documents your special event!",
  location: "Roxbury",
  profile_photo: "https://picture-this-production.s3.amazonaws.com/Jessica/Jessica+Smith.jpg",
  category: "Event"
)