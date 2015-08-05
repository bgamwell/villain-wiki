Rails.application.routes.draw do

  root 'villains#index'

  resources :villains

end
