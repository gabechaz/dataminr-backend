Rails.application.routes.draw do
  # resources :questions
  # resources :answers
  # resources :users

  get '/questions', to: 'questions#index'
  get '/questions/new', to: 'questions#new', as: 'new_question'
  post '/questions', to: 'questions#create'
  get '/questions/:id', to: 'questions#show'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

 



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
