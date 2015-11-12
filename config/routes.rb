Rails.application.routes.draw do
  root 'questions/index'

  get 'answers/index'

  get 'questions/index'

  get 'users/index'

  
end
