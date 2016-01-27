   Rails.application.routes.draw do
   root to: 'questions#index'

   get '/signup' => 'users#new'
   post '/users' => 'users#create'
   get '/login' => 'sessions#login'
   post '/sessions' => 'sessions#user_login'
   get '/logout' => 'sessions#logout'

   resources :sessions
   
   resources :users do
   	resource :questions
   	resource :answers
   end

   resources :questions do
   	resource :answers
   	resource :users
        member do
            put "like", to: "questions#upvote"
            put "dislike", to: "questions#downvote"
        end
   end

   resources :answers do
   	resource :questions
   	resource :users
        member do
            put "like", to: "answers#upvote"
            put "dislike", to: "answers#downvote"
        end
   end

   end
