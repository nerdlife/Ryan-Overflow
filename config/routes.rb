Rails.application.routes.draw do
  root to: 'questions#index'

  resources :users do
  	resource :questions
  	resource :answers
  end

  resources :questions do
  	resource :answers
  end
 
end
