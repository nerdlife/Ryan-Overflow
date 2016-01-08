   Rails.application.routes.draw do
   root to: 'questions#index'

   # # SIGN UP
   get '/signup' => 'users#new'
   post '/users' => 'users#create'
   # # LOGIN
   get '/login' => 'sessions#login'
   post '/sessions' => 'sessions#user_login'
   # LOG OUT
   get '/logout' => 'sessions#logout'

   resources :sessions
   resources :users
   resources :questions
   resources :answers
   resources :votes


   # resources :users do
   # 	resource :questions
   # 	resource :answers
   # 	resource :votes
   # end

   # resources :questions do
   # 	resource :answers
   # 	resource :users
   # 	resource :votes
   # end

   # resources :answers do
   # 	resource :questions
   # 	resource :users
   # 	resource :votes
   # end

   end
