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


  delete "/sessions", to: "sessions#destroy"


  ###route for user edit###
  get "/users/:id/edit", to: "users#edit"

  patch "/users/edit/:id", to: "users#update"


  #posts
  resources :posts, except: :destroy  # added to straighten out original, non-standard paths


  delete '/posts/:id', to: 'posts#destroy', as: 'delete_post'
  # get '/posts', to: 'posts#index', as: 'posts'
  # get '/posts/:id', to: 'posts#show', as: 'show_post'
  # get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  # patch '/posts/:id', to: 'posts#update'


  # ###update posts###
  # # post '/posts', to: 'posts#create'
  # # put '/posts/:id', to: 'posts#update'
  # # post '/posts/:id', to: 'posts#destroy'

end

