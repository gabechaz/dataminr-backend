Rails.application.routes.draw do
  # resources :questions
  # resources :answers
  # resources :users

  get '/questions', to: 'questions#index'
  get '/questions/new', to: 'questions#new', as: 'new_question'
  post '/questions', to: 'questions#create'
  get '/questions/:id', to: 'questions#show'

  post '/answers', to: 'answers#post'
  get '/answers', to: 'answers#index'
  get '/answers/:id', to: 'answers#show'
  delete '/answers/:id', to: 'answers#destroy'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  get '/users/:id', to: 'users#show'

  post "/login", to: "users#login"

  post "/logout", to: "users#logout"

  get "/me", to: "users#me"



 



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
