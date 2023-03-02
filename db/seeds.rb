User.delete_all
Photographer.delete_all
Review.delete_all

#### User ####
user_1 = User.create(
  email: "marc@gmail.com",
  password: "password",
  username: "marc_klaus",
)

user_2 = User.create(
  email: "ashley@gmail.com",
  password: "password",
  username: "aashley12",
)

user_3 = User.create(
  email: "richard@gmail.com",
  password: "password",
  username: "richard.white12",
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

# REVIEWS

# Marc 
review_1 = Review.find_or_create_by(
  title: "Amazing photo shoot!",
  body: "I had a wonderful time working with Marc. I plan on booking him again!",
  rating: 5,
  user: user_1,
  photographer: photographer_1
)

review_2 = Review.find_or_create_by(
  title: "I loved my pictures!",
  body: "These are absolutley my favorite images I have of myself. I brought about 5-7 outfits and Marc was able to capture all of them beautifully within 3 hours. He works fast but the results are amazing. ",
  rating: 4,
  user: user_2,
  photographer: photographer_1
)

review_3 = Review.find_or_create_by(
  title: "Couldn't have gone better",
  body: "Marc was on time, very professional, and understood my best angles. He gave very good instructions for posing and kept reminding me how to place my hands to look less like claws! Thanks Marc! ",
  rating: 5,
  user: user_3,
  photographer: photographer_1
)

# Charles 
review_4 = Review.find_or_create_by(
  title: "Fun day",
  body: "I really enjoyed working with Charles, however I feel at times we worked too fast and wanted to quickly move on to the next shot. Overall I am happy with my experience. Just wished I could've gotten more time!",
  rating: 3,
  user: user_1,
  photographer: photographer_2
)

review_5 = Review.find_or_create_by(
  title: "Very happy with the end results",
  body: "I'll be honest. There were moments where I had my doubts for what Charles was directing us to do. But once I recieved the photos back, I then understood what he was trying to capture. I should've know to always trust the photographer and in their process.",
  rating: 4,
  user: user_2,
  photographer: photographer_2
)

review_6 = Review.find_or_create_by(
  title: "My family LOVED him",
  body: "Charles is the perfect photographer! As soon as we welcomed him into our home, my entire family already liked him. He's funny and knows how to keep everyone focused and smiling. I highly recommend hiring him!",
  rating: 5,
  user: user_3,
  photographer: photographer_2
)

# Alex
review_7 = Review.find_or_create_by(
  title: "It was rough...",
  body: "Don't get me wrong, Alex was a nice guy. However, he's more on the quiet side and didn't give much direction on how to pose. At one point I asked him what I should do with my hands and he just said to put them where I normally would. When I did he told me to try placing them in a different way. It's like he knew what he DIDN'T want but didn't know what he DID want. If that makes sense...",
  rating: 2,
  user: user_1,
  photographer: photographer_3
)

review_8 = Review.find_or_create_by(
  title: "Overall great!",
  body: "I needed professional headshots for my social media accounts and decided to book Alex. Glad that I did because my photos turned out great! They were exactly what I was looking for.",
  rating: 4,
  user: user_2,
  photographer: photographer_3
)

review_9 = Review.find_or_create_by(
  title: "I'd recommend booking him",
  body: "The only thing that holds me back from giving a 5 star rating is because of the turn around time. Prior to the shoot, Alex promised he would have the photos edited and sent within 2 days after the shoot. However, that was not the case. It took 5 days for me to get them back. I understand that he was busy with other clients so I'm not upset, but is something to keep in mind if you need photos delievered to you quickly.",
  rating: 4,
  user: user_3,
  photographer: photographer_3
)

# Nick
review_10 = Review.find_or_create_by(
  title: "Never again",
  body: "Nick took 2 weeks to deliever the images. The photo shoot itself was very much rushed and could tell he was just trying to move quickly without putting in any effort. It's shocking he charges $250. It's really not worth it and over priced. Sorry but I wouldn't recommend booking him.",
  rating: 1,
  user: user_1,
  photographer: photographer_4
)

review_11 = Review.find_or_create_by(
  title: "It was good... I guess",
  body: "I was hoping for something more but he technically did deliever on what he promised. My dog didn't seem to like him too much so it was hard for Nick to pose him. But the images came out fine! Not bad at all.",
  rating: 3,
  user: user_2,
  photographer: photographer_4
)

review_12 = Review.find_or_create_by(
  title: "Nick is the best!",
  body: "My cats loved Nick! The images are amazing and plan on booking him again in the future.",
  rating: 5,
  user: user_3,
  photographer: photographer_4
)

# Michael
review_13 = Review.find_or_create_by(
  title: "We loved Michael",
  body: "I hired Michael to photograph one of my sons baseball games and he delivered wonderfully!",
  rating: 4,
  user: user_1,
  photographer: photographer_5
)

review_14 = Review.find_or_create_by(
  title: "The photos turned out AMAZING!!",
  body: "Wow! I'm sooo happy with how my images turned out. Michael was able to reach out to my school and found a way to reserve the whole football field just for the shoot. Michale is very athletic himself so he was able to keep up with my energy and captured amazing action shots of me. Please book him for your shoot, you won't be disappointed",
  rating: 5,
  user: user_2,
  photographer: photographer_5
)

review_15 = Review.find_or_create_by(
  title: "He's phenomenal!",
  body: "Michael meet up with me at the soccer fields and for 2 hours he ran around with me taking awesome shots of me. I think he had better endurance that I did! We actually ended up playing a pickup game later that week.",
  rating: 5,
  user: user_3,
  photographer: photographer_5
)

# Molly 
review_16 = Review.find_or_create_by(
  title: "What a wonderful day",
  body: "Molly was fantastic! Her and my fiance got along so well and she made him feel at ease in the photos. She really knows what she's doing!",
  rating: 5,
  user: user_1,
  photographer: photographer_6
)

review_17 = Review.find_or_create_by(
  title: "I loved her!",
  body: "I didn't want the shoot to ever end. We were all having too much fun and we were laughing the entire time. Molly understands how to make people comfortable in front of her lens. I'm not usually a photogenic person, however with Molly she made me look like a model! We loved the images. I cried of joy when I first saw them because she captured us so well!",
  rating: 5,
  user: user_2,
  photographer: photographer_6
)

review_18 = Review.find_or_create_by(
  title: "It was a good time",
  body: "I only gave a 3 star because my makeup looked horrible but there wasn't anything Molly could do about it. It also was a very windy day and wanted to reschedule but she said it would take four weeks to re-book her, so obviously I wasn't going to wait that long and decided to do the shoot anyways. My hair looks frizzy and messy in some of the photos but there were a few that I liked and had printed.",
  rating: 3,
  user: user_3,
  photographer: photographer_6
)

# Emily 
review_19 = Review.find_or_create_by(
  title: "Absolutely stunning",
  body: "I was a whole mess leading up to the wedding day, but at least I knew there was one person I wouldn't have to worry about and that was Emily! She was on top of all communications with me and our videographer. She was quick to respond to my phone calls and emails. The photos were everything I imagined them to be but better!",
  rating: 5,
  user: user_1,
  photographer: photographer_7
)

review_20 = Review.find_or_create_by(
  title: "The wedding miricle",
  body: "Yes I am referring to Emily. She really was the best photographer I could've hired. When I got the photos back, I cried the entire day because of how gorgeous they were. She captured my day like a fairytale. Book her now!",
  rating: 5,
  user: user_2,
  photographer: photographer_7
)

review_21 = Review.find_or_create_by(
  title: "I can't stop showing them off!",
  body: "My wedding day wouldn't have been captured if it weren't for Molly. She gave me everything I asked for and captured all the important moments I wanted to remember. ",
  rating: 5,
  user: user_3,
  photographer: photographer_7
)

# Connor
review_22 = Review.find_or_create_by(
  title: "Connor was the best!",
  body: "I loved Connor because I could tell he genuinely cared about taking his time with me and made me feel special. He's very passionate about photographer and it showed during our shoot. He's also a funny guy and just carries positive/good energy. I would happily book him again.",
  rating: 4,
  user: user_1,
  photographer: photographer_8
)

review_23 = Review.find_or_create_by(
  title: "The pictures are so good!",
  body: "When I saw Connor's portfolio I immediately booked him. His style is exactly what I wanted and he delivered. Thanks again Connor!",
  rating: 4,
  user: user_2,
  photographer: photographer_8
)

review_24 = Review.find_or_create_by(
  title: "Connor was nice :)",
  body: "I'm overall happy with how my photos turned out. Thanks Connor!",
  rating: 3,
  user: user_3,
  photographer: photographer_8
)

# Paul
review_25 = Review.find_or_create_by(
  title: "Thank you Paul",
  body: "He really gave it his all. Once you work with Paul, you will feel like a model. His direction and tips on how to pose were top tier. The pictures were sick! Can't believe he made me look that good. Paul is a ninja behind that lens.",
  rating: 4,
  user: user_1,
  photographer: photographer_9
)

review_26 = Review.find_or_create_by(
  title: "The best fitness photographer ever",
  body: "He really knows his stuff! And I'm not just talking about photography, but fitness as well. His energy and passion made me motivated throughout the entire shoot. The photos turned out AMAZING. I'm posting all of them on my instagram. Appreciate you Paul!",
  rating: 5,
  user: user_2,
  photographer: photographer_9
)

review_27 = Review.find_or_create_by(
  title: "Paul is the man!",
  body: "Working with Paul was great because he actually has knowledge of fitness and could carry a conversation with me. His camera almost got smashed by weights like eight times, but it just goes to show how far he's willing to go to get the shot. Paul isn't afraid to take risks and I respect that. Hire my man Paul already!",
  rating: 5,
  user: user_3,
  photographer: photographer_9
)

# James
review_28 = Review.find_or_create_by(
  title: "Spectacular shoot",
  body: "I still can't believe how well James captured me. It's like he really saw who I am, almost even better than I see myself. Wonderful job, James.",
  rating: 5,
  user: user_1,
  photographer: photographer_10
)

review_29 = Review.find_or_create_by(
  title: "He worked it!",
  body: "James has a perfect eye for seeing people. Before he even picked up his camera he sat me down and took an hour to have a conversation with me to get to know me. He made me feel so relaxed and at one point I forgot we were even taking pictures because we were so deep in conversation. But that's what makes James unique. He genuinely cares about his subjects and wants to get to know them.",
  rating: 4,
  user: user_2,
  photographer: photographer_10
)

review_30 = Review.find_or_create_by(
  title: "James is special",
  body: "When I sent the images to my agent she immediately called me to tell me how much she loved the photos and wanted to know who the photographer was. I ended up spending a full hour talking about how amazing James was and why I think he's going to be the next great photographer of our time! Keep going kid!",
  rating: 4,
  user: user_3,
  photographer: photographer_10
)

# Anna 
review_31 = Review.find_or_create_by(
  title: "Photos were delicious",
  body: "Anna was the sweetest! She knew what I wanted and returned the images so fast. Thanks Anna!",
  rating: 5,
  user: user_1,
  photographer: photographer_11
)

review_32 = Review.find_or_create_by(
  title: "My menu is upgraded!",
  body: "I hired Anna because my restaurant needed better photos for my menus. She made my food look like a million bucks! My customers have been complimenting the new menus and I tell them that they should thank Anna!",
  rating: 4,
  user: user_2,
  photographer: photographer_11
)

review_33 = Review.find_or_create_by(
  title: "Anna is the BEST",
  body: "From the moment we first started communicating, Anna and I hit it off so well and she understood what I wanted. She took about 3 hours to photograph my dishes for my new cook book and then I got the images that same week!",
  rating: 4,
  user: user_3,
  photographer: photographer_11
)

# Jessica 
review_34 = Review.find_or_create_by(
  title: "I'm happy!",
  body: "Jessica was so friendly and captured what I needed for my companies website.",
  rating: 4,
  user: user_1,
  photographer: photographer_12
)

review_35 = Review.find_or_create_by(
  title: "She was the talk of the party!",
  body: "By the end of the event, Jessica was friends with everyone! She's so nice and easy to get along with. People forgot she was a photographer because she blended in so well with the rest of us. When she sent the images, everyone was so excited and happy with the way they turned out. Thanks Jess!",
  rating: 4,
  user: user_2,
  photographer: photographer_12
)

review_36 = Review.find_or_create_by(
  title: "Pictures turned out good",
  body: "I almost wish that she took more because there were some moments she missed that I was hoping she'd capture. But overall I'm satisfied with the results.",
  rating: 3,
  user: user_3,
  photographer: photographer_12
)


# IMAGES #

# Photographer: Marc Yebra 
marc_01_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc01.jpg', 
  photographer_id: photographer_1
)
marc_02_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc02.jpg', 
  photographer_id: photographer_1
)
marc_03_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc03.jpg', 
  photographer_id: photographer_1
)
marc_04_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc04.jpg', 
  photographer_id: photographer_1
)
marc_05_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc05.jpg', 
  photographer_id: photographer_1
)
marc_06_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc06.jpg', 
  photographer_id: photographer_1
)
marc_07_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc07.jpg', 
  photographer_id: photographer_1
)
marc_08_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc08.jpg', 
  photographer_id: photographer_1
)
marc_09_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc09.jpg', 
  photographer_id: photographer_1
)
marc_10_image = Image.find_or_create_by(
  photo: 'https://picture-this-production.s3.amazonaws.com/Marc/Fashion/Marc10.jpg', 
  photographer_id: photographer_1
)


