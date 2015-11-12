Rails.application.routes.draw do
  root to: 'questions#index'

  resources :users do
  	resource :questions
  	resource :answers
  end

  resources :questions do
  	resource :answers
  	resource :users
  end

  resources :answers do
  	resource :questions
  	resource :users
  end
 
end
