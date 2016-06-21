Rails.application.routes.draw do


  #user routes
  get '/', to: 'users#home', as: 'home'

  #route for sign up#
  get '/signup', to: "users#new", as: "new_user"

  # users
  post '/users', to: "users#create"

  get '/users/:id', to: "users#show", as: "user_id"

  #sign in/sesssions#
  get '/signin', to: "sessions#new"

  #sessions
  post '/sessions', to: 'sessions#create'

  #posts
  get '/posts', to: 'posts#index', as: 'posts'

  get '/posts/:id', to: 'posts#show', as: 'show_post'

  get '/posts/:id/edit', to: 'posts#edit'

  post '/posts', to: 'posts#create'

  put '/posts/:id', to: 'posts#update'

  post '/posts/:id', to: 'posts#destroy'

end

