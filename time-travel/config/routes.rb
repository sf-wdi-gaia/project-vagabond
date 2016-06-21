Rails.application.routes.draw do

  get '/', to: 'users#index', as: 'home'

  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/:id', to: 'posts#show', as: 'show_post'

end

