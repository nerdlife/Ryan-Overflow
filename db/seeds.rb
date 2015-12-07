User.create( email: 'ryan@ryan.com',username: 'RyansUsername',name: 'Ryan Urie', password: 'ryan', password_confirmation: 'ryan', profile_pic:"http://clloh.com/wp-content/uploads/2015/08/meteor-js-logo-128x128.png" , bio: 'Here is my bio so read it' )
# , votes: 55
Question.create(title: 'Seed Q Uno: Why is processing a sorted array faster than an unsorted array?', content: 'Now for the sake of argument, suppose this is back in the 1800s - before long distance or radio communication. You are the operator of a junction and you hear a train coming. You have no idea which way it is supposed to go. You stop the train to ask the captain which direction he wants. And then you set the switch appropriately.',  user_id: 1,  tags: "Html Css Javascript Ruby Rails Meteor" )
Answer.create(content: 'Ryan User 1... First Answer Content Is  Here For Question ID 3', question_id: 3, user_id: 1)
Answer.create(content: ' dui. Praesent blandit dolor. Sed non q', question_id: 3, user_id: 1)
Vote.create(user_id: 1, question_id: 1)
Vote.create(user_id: 1, question_id: 2)
Vote.create(user_id: 1, question_id: 3)
Vote.create(user_id: 1,  answer_id: 1)
Vote.create(user_id: 1,  answer_id: 2)
Vote.create(user_id: 1,  answer_id: 3)


User.create(email: 'moses@moses.com',username: 'MosesUsername',name: 'Moses Magoo', password: 'ryan', password_confirmation: 'ryan', profile_pic: "http://helpacoder.com/wp-content/uploads/2015/07/angular.jpeg", bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et leo hendrerit, efficitur ligula sed, viverra mauris. Nulla semper luctus dui, id interdum diam sodales at. Nulla tincidunt dolor vitae facilisis ultrices. Nam eu erat at erat vulputate posuere nec id ipsum. Nam gravida nibh magna, vitae faucibus odio ultrices vitae. Cum sociis .' )
# , Question.create(title: 'Moses User 2...SECOND Question Title', content: 'Moses User 2..Second Question Content Is  Here', user_id: 2, tags: ["Mean", "Angular", "React"])
Question.create(title: 'Seed for test', content: 'Moses User 2..Second Question Content Is  Here', user_id: 2,  tags: "Mean Angular React")

Answer.create(content: "This is branch prediction. I admit it's not the best analogy since the train could just signal the direction with a flag. But in computers, the processor doesn't know which direction a branch will go until the last moment. So how would you strategically guess to minimize the number of times that the train must back up and go down the other path? You look at the past history! If the train goes left 99% of the time, then you guess left. If it alternates, then you alternate your guesses. If it goes one way every 3 times, you guess the same... In other words, you try to identify a pattern and follow it. This is more or less how branch predictors work. Most applications have well-behaved branches. So modern branch predictors will typically achieve 90% hit rates. But when faced with unpredictable branches with no recognizable patterns, branch predictors are virtually useless.", question_id: 1, user_id: 2)
Answer.create(content: ' amet, consectetur adipiscing elit', question_id: 1, user_id: 2)
Answer.create(content: 'tus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcor', question_id: 1, user_id: 2)
Answer.create(content: 'or neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luc', question_id: 1, user_id: 2)
Answer.create(content: 'sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ip', question_id: 1, user_id: 2)
Answer.create(content: 'Moses User 2....2nd Answer Content Is Here For Question ID 1', question_id: 3, user_id: 2)
Answer.create(content: '9999sdfasfasdfsadffasd', question_id: 3, user_id: 2)
Answer.create(content: '44444dgsdgdfsgdgdsf45t45ggg5 g34g5', question_id: 3, user_id: 2)
Answer.create(content: '1111111dgsdgdfsgttdgdsf45t45ggg5 g34g5', question_id: 3, user_id: 2)
Answer.create(content: '2222dgsdgdfsgdgdsf45t45ggg5 g34g5', question_id: 3, user_id: 2)
Answer.create(content: '77777777dgsdgdfsgdgdsf45t45ggg5 g34g5', question_id: 3, user_id: 2)
Answer.create(content: '8888888dgsdgdfsgdgdsf45t45ggg5 g34g5', question_id: 3, user_id: 2)
Answer.create(content: ' Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi illus. Ut ultrices ultrices enim. Cu', question_id: 3, user_id: 2)
Vote.create(user_id: 2, question_id: 1)
Vote.create(user_id: 2, question_id: 1)
Vote.create(user_id: 2, question_id: 2)
Vote.create(user_id: 2, question_id: 3)
Vote.create(user_id: 2,  answer_id: 1)
Vote.create(user_id: 2,  answer_id: 1)
Vote.create(user_id: 2,  answer_id: 2)
Vote.create(user_id: 2,  answer_id: 3)
Vote.create(user_id: 2,  answer_id: 3)



User.create(email: 'katy@katy.com',username: 'KatysUsername',name: 'Katy Elliott', password: 'ryan', password_confirmation: 'ryan', profile_pic: "http://adrianmejia.com/images/MEAN_jarroba.png", bio: 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam at dolor augue. Morbi varius dolor diam. Suspendisse tristique felis ut mauris molestie, at elementum mauris finibus. Pellentesque quis libero dui. Praesent quis accumsan risus. Integer placerat diam sit amet erat aliquet ultricies. Donec viverra scelerisque placerat. Nulla placerat scelerisque nunc, ac ultricies libero ullamcorper vel')
 # , votes: 123
Question.create(title: 'Katy User 3.....THIRD Question Title', content: 'Katy User 3...THIRD Question Content Is  Here', user_id: 3, tags: "Football Keyboard Sandwich")
Answer.create(content: 'ed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed conva', question_id: 2, user_id: 3)
Answer.create(content: 'Katy User 3....2nd Answer Content Is Here For Question ID 2', question_id: 2, user_id: 3)
Vote.create(user_id: 3, question_id: 1)
Vote.create(user_id: 3, question_id: 1)
Vote.create(user_id: 3, question_id: 2)
Vote.create(user_id: 3, question_id: 2)
Vote.create(user_id: 3, question_id: 2)
Vote.create(user_id: 3, question_id: 3)
Vote.create(user_id: 3,  answer_id: 1)
Vote.create(user_id: 3,  answer_id: 1)
Vote.create(user_id: 3,  answer_id: 2)
Vote.create(user_id: 3,  answer_id: 2)
Vote.create(user_id: 3,  answer_id: 3)
Vote.create(user_id: 3,  answer_id: 3)
