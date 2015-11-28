User.create(email: 'ryan@ryan.com',username: 'RyansUsername',name: 'Ryan Urie', password: 'ryanurie', password_confirmation: 'ryanurie', profile_pic:"http://clloh.com/wp-content/uploads/2015/08/meteor-js-logo-128x128.png" , bio: 'Here is my bio so read it' )
# , votes: 55
Question.create(title: 'Ryan User 1..... First Question Title', content: 'Ryan User 1 First Question Content Is Here',  user_id: 1, votes: 5, tags: ["Html", "Css", "Javascript", "Ruby", "Rails", "Meteor"] )
Answer.create(content: 'Ryan User 1... First Answer Content Is  Here For Question ID 3', question_id: 3, user_id: 1, votes: 4, tags: ["Html", "Css", "Javascript", "Ruby", "Rails", "Meteor"])
Answer.create(content: 'Ryan User 1.....2nd Answer Content Is  Here For Question ID 3', question_id: 3, user_id: 1, votes: 3, tags: ["Html", "Css", "Javascript", "Ruby", "Rails", "Meteor"])



User.create(email: 'moses@moses.com',username: 'MosesUsername',name: 'Moses Magoo', password: 'ryanurie', password_confirmation: 'ryanurie', profile_pic: "http://helpacoder.com/wp-content/uploads/2015/07/angular.jpeg", bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et leo hendrerit, efficitur ligula sed, viverra mauris. Nulla semper luctus dui, id interdum diam sodales at. Nulla tincidunt dolor vitae facilisis ultrices. Nam eu erat at erat vulputate posuere nec id ipsum. Nam gravida nibh magna, vitae faucibus odio ultrices vitae. Cum sociis .' )
# , votes: 99
Question.create(title: 'Moses User 2...SECOND Question Title', content: 'Moses User 2..Second Question Content Is  Here', user_id: 2, votes: 5, tags: ["Mean", "Angular", "React"])
Question.create(title: 'Seed for test', content: 'Moses User 2..Second Question Content Is  Here', user_id: 2, votes: 51, tags: ["Mean", "Angular", "React"])
Question.create(title: 'Ugiluerihuer fierhiuerw ', content: 'Moses User 2..Second Question Content Is  Here', user_id: 2, votes: 2, tags: ["Mean", "Angular", "React"])
Question.create(title: '3646546861156', content: 'Moses User 2..Second Question Content Is  Here', user_id: 2, votes: 19, tags: ["Mean", "Angular", "React"])
# Question Vote total = 77
# Answer  Vote total = 25
Answer.create(content: 'Moses User 2....FIRST Answer Content Is Here For Question ID 1', question_id: 1, user_id: 2 , votes: 2, tags: ["Mean", "Angular", "React"])
Answer.create(content: 'Moses User 2....2nd Answer Content Is Here For Question ID 1', question_id: 1, user_id: 2 , votes: 2, tags: ["Mean", "Angular", "React"])
Answer.create(content: 'Moses User 2....2nd Answer Content Is Here For Question ID 1', question_id: 1, user_id: 2 , votes: 7, tags: ["Mean", "Angular", "React"])
Answer.create(content: 'Moses User 2....2nd Answer Content Is Here For Question ID 1', question_id: 1, user_id: 2 , votes: 5, tags: ["Mean", "Angular", "React"])
Answer.create(content: 'Moses User 2....2nd Answer Content Is Here For Question ID 1', question_id: 1, user_id: 2 , votes: 9, tags: ["Mean", "Angular", "React"])




User.create(email: 'katy@katy.com',username: 'KatysUsername',name: 'Katy Elliott', password: 'ryanurie', password_confirmation: 'ryanurie', profile_pic: "http://adrianmejia.com/images/MEAN_jarroba.png", bio: 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam at dolor augue. Morbi varius dolor diam. Suspendisse tristique felis ut mauris molestie, at elementum mauris finibus. Pellentesque quis libero dui. Praesent quis accumsan risus. Integer placerat diam sit amet erat aliquet ultricies. Donec viverra scelerisque placerat. Nulla placerat scelerisque nunc, ac ultricies libero ullamcorper vel')
 # , votes: 123
Question.create(title: 'Katy User 3.....THIRD Question Title', content: 'Katy User 3...THIRD Question Content Is  Here', user_id: 3, votes: 5, tags: ["Football", "Keyboard", "Sandwich"])
Answer.create(content: 'Katy User 3....First Answer Content Is Here For Question ID 2', question_id: 2, user_id: 3, votes: 2, tags: ["Football", "Keyboard", "Sandwich"])
Answer.create(content: 'Katy User 3....2nd Answer Content Is Here For Question ID 2', question_id: 2, user_id: 3, votes: 2, tags: ["Football", "Keyboard", "Sandwich"])
