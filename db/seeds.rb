   User.create(email: 'ryan@ryan.com', name: 'Ryan Urie', username: 'Nerd Life', password: 'ryanurie', bio: 'This is my very short bio blah' )

   Question.create(title: 'First Question Title', content: 'So here si my questions content that someone will answer', user_id: 1 )

   Answer.create(content: 'This is my first questions ANSWER', question_id: 1, user_id: 1)

   Answer.create(content: 'Blah Blah Blah Blah Blah Blah Blah Blah ', question_id: 2, user_id: 1)

