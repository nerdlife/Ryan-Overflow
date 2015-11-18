User.create(email: 'ryan@ryan.com',username: 'Seed Ryan',name: 'Ryan',password: 'ryanurie',password_confirmation: 'ryanurie', profile_pic:"http://clloh.com/wp-content/uploads/2015/08/meteor-js-logo-128x128.png" , bio: 'Here is my bio so read it', votes: 55 )
Question.create(title: 'I have a question first', content: 'So here is my questions content that someone will answer', user_id: 1, votes: 5, tags: ["Html", "Css", "Javascript", "Ruby", "Rails", "Meteor"] )
Answer.create(content: 'This is my first questions ANSWER', question_id: 1, user_id: 1, votes: 4, tags: ["Html", "Css", "Javascript", "Ruby", "Rails", "Meteor"])
Answer.create(content: '2nd Second 2nd Second 2nd Second 2nd Second 2nd Second ', question_id: 1, user_id: 1, votes: 3, tags: ["Html", "Css", "Javascript", "Ruby", "Rails", "Meteor"])



User.create(email: 'moses@moses.com',username: 'Seed moses',name: 'moses',password: 'ryanurie',password_confirmation: 'ryanurie', profile_pic: "http://helpacoder.com/wp-content/uploads/2015/07/angular.jpeg", bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et leo hendrerit, efficitur ligula sed, viverra mauris. Nulla semper luctus dui, id interdum diam sodales at. Nulla tincidunt dolor vitae facilisis ultrices. Nam eu erat at erat vulputate posuere nec id ipsum. Nam gravida nibh magna, vitae faucibus odio ultrices vitae. Cum sociis .' , votes: 99)
Question.create(title: 'Second Question', content: '2nd 2nd 2nd 2nd 2nd 2nd 2nd 2nd ', user_id: 2, votes: 5, tags: ["Mean", "Angular", "React"])
Answer.create(content: 'Blah Blah Blah Blah Blah Blah Blah Blah ', question_id: 2, user_id: 2 , votes: 2, tags: ["Mean", "Angular", "React"])
Answer.create(content: 'Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup Yup  ', question_id: 2, user_id: 2 , votes: 2, tags: ["Mean", "Angular", "React"])



User.create(email: 'katy@katy.com',username: 'Seed katy',name: 'katy',password: 'ryanurie',password_confirmation: 'ryanurie', profile_pic: "http://adrianmejia.com/images/MEAN_jarroba.png", bio: 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam at dolor augue. Morbi varius dolor diam. Suspendisse tristique felis ut mauris molestie, at elementum mauris finibus. Pellentesque quis libero dui. Praesent quis accumsan risus. Integer placerat diam sit amet erat aliquet ultricies. Donec viverra scelerisque placerat. Nulla placerat scelerisque nunc, ac ultricies libero ullamcorper vel' , votes: 123)
Question.create(title: '3-3-3-3-3-3-3-3-3-3-3', content: '#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#- ', user_id: 3, votes: 5, tags: ["Football", "Keyboard", "Sandwich"])
Answer.create(content: '3-3-3-3-3-3-3-3-3-3-3 ', question_id: 2, user_id: 3, votes: 2, tags: ["Football", "Keyboard", "Sandwich"])
Answer.create(content: 'ZzzzzzZzzzzzZZzzzzzZzzzzzZZzzzzzZzzzzzZZzzzzzZzzzzzZZzzzzzZzzzzzZ ', question_id: 2, user_id: 3, votes: 2, tags: ["Football", "Keyboard", "Sandwich"])
