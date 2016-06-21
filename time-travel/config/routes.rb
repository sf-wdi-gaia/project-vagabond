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

 #gets all periods
 get '/periods', to: 'period#index', as: 'period_index'
 #posts new period to period index
 post '/periods', to: 'period#create'
 #gets form to creaste new period
 get '/period/new', to: 'period#new', as: 'period_new'
 #gets form to edit period
 get '/period/:id/edit', to: 'period#edit'
 #gets individual period
 get '/period/:id', to: 'period#show'
 #updates individual period
 patch '/period/:id', to: 'period#update'
 #destryos individual period
 delete '/period/:id', to: 'period#destroy'

end

