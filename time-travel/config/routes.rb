Rails.application.routes.draw do

  get '/', to: 'users#home', as: 'home'


  ####route for new####
  get '/signup', to: "users#new", as: "new_user"

  post '/users', to: "users#create"

  get '/users/:id', to: "users#show", as: "user_id"

  ####route for user sign_in#####

  get '/signin', to: "sessions#new"

  post '/sessions', to: 'sessions#create'


  ###route for user edit###
  get "/users/:id/edit", to: "users#edit"

  patch "/users/edit/:id", to: "users#update"





end

