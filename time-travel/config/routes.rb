Rails.application.routes.draw do

  get '/', to: 'users#index', as: 'home'

end

