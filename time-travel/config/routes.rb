Rails.application.routes.draw do


  #USERS
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




  #POSTS
  get '/posts', to: 'posts#index', as: 'posts'

  get '/posts/:id', to: 'posts#show', as: 'show_post'

  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'

  ###update posts###
  # put '/posts/:id', to: 'posts#update'
  patch '/posts/:id', to: 'posts#update'
  # post '/posts/:id', to: 'posts#destroy'


  #PERIODS
  #gets an index of all the periods
  get '/periods', to: 'periods#index'
  # #gets one period (show page)
  get '/periods/:id', to: 'periods#show'

end

