avatar_array = [
                        'http://icons.iconarchive.com/icons/hopstarter/face-avatars/256/Male-Face-N1-icon.png',
                        'http://icons.iconarchive.com/icons/hopstarter/face-avatars/256/Male-Face-N2-icon.png',
                        'http://icons.iconarchive.com/icons/hopstarter/face-avatars/256/Male-Face-N3-icon.png',
                        'http://icons.iconarchive.com/icons/hopstarter/face-avatars/256/Male-Face-N4-icon.png',
                        'http://icons.iconarchive.com/icons/hopstarter/face-avatars/256/Male-Face-N5-icon.png',
                        'http://icons.iconarchive.com/icons/hopstarter/face-avatars/256/Male-Face-J1-icon.png',
                        'http://static.comicvine.com/uploads/scale_super/14/147603/2835465-3_male_neutral_large_large.jpg',
                        'http://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/35/3575e0cf707df5dd1356a8c0cd64c2bc56fe2d70_full.jpg'
                     ]

User.create( 
                     email: 'guest@guest.com',
                     username: 'guest',
                     name: 'guest', 
                     password: 'guest', 
                     password_confirmation: 'guest', 
                     profile_pic:"https://cdn.tutsplus.com/mac/authors/jacob-penderworth/user-black.png" , 
                     bio: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
                     location: 'Portland, OR',
                  )

8.times do
   User.create(
                        email: Faker::Internet.email, 
                        username: Faker::Internet.user_name,
                        name: Faker::Name.name, 
                        password: 'ryan', 
                        password_confirmation: 'ryan', 
                        profile_pic: avatar_array.pop, 
                        bio: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
                        location: Faker::Address.city
                     )
end

24.times do
   Question.create(
                              title: Faker::Hacker.say_something_smart, 
                              content: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart, 
                              user_id: rand(2..9),  
                              tags: Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun
                              )
end

100.times do 
   Answer.create(
                              content: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
                              question_id: rand(1..36), 
                              user_id: rand(2..9)
                           )
end

User.create( 
                     email: 'ryan@ryan.com',
                     username: 'RyansUsername',
                     name: 'Ryan Urie', 
                     password: 'ryan', 
                     password_confirmation: 'ryan', 
                     profile_pic:"http://avatars0.githubusercontent.com/u/11891327?v=3&s=460" , 
                     bio: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart ,
                     location: 'Portland, OR'
                  )

12.times do
   Question.create(
                              title: Faker::Hacker.say_something_smart, 
                              content: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart, 
                              user_id: 10,  
                              tags: Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun + " " + Faker::Hacker.noun
                              )
end

100.times do 
   Answer.create(
                              content: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
                              question_id: rand(1..24), 
                              user_id: 10
                           )
end

User.create( 
                     email: 'katy@katy.com',
                     username: 'katy',
                     name: 'katy', 
                     password: 'ryan', 
                     password_confirmation: 'ryan', 
                     profile_pic:"https://cdn.tutsplus.com/mac/authors/jacob-penderworth/user-black.png" , 
                     bio: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
                     location: 'Portland, OR',
                  )

User.create( 
                     email: 'moses@moses.com',
                     username: 'moses',
                     name: 'moses', 
                     password: 'ryan', 
                     password_confirmation: 'ryan', 
                     profile_pic:"https://cdn.tutsplus.com/mac/authors/jacob-penderworth/user-black.png" , 
                     bio: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
                     location: 'Portland, OR',
                  )

# ------User w No Q&A's Seed------
User.create( 
                     email: 'noqa@noqa.com',
                     username: 'noqa',
                     name: 'noqa', 
                     password: 'ryan', 
                     password_confirmation: 'ryan', 
                     profile_pic:"http://coachestrainingblog.com/becomeacoach/wp-content/uploads/2011/09/Image-by-brandextenders-e1316413379713.jpg" , 
                     bio: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
                     location: 'Portland, OR'
                  )


Question.create(
    id: 222,
                              title: "My Test Question My Test Question My Test My Test My Test My Test My Test My My Test Question My TDone Done Done Done Done125", 
                              content: "My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My My Test Question My Test Question My Test Question My Test Question My Test Questiouestion My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My Test Question My My Test Question My Test Question My Test My Test My Test My Test My Test My My Test Question My TDone Done Done Done Done 1250", 
                              user_id: 10,  
                              tags: "Test Tags Test Tags Test"
                              )

10.times do 
   Answer.create(
                              content: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart  + ".  " + Faker::Hacker.say_something_smart,
                              question_id: 222, 
                              user_id: rand(1..9)
                           )
end
