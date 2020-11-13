Rails.application.routes.draw do

  resources :shelters
  devise_for :staffs

  # Root
  
  root to: 'home#index'

  # Manual CRUD routing
  get '/dogs', to: 'dogs#index'
  get '/dogs/new', to: 'dogs#new'
  post '/dogs', to: 'dogs#create'
  get '/dogs/:id/edit', to: 'dogs#edit', as: 'edit_dog'
  put '/dogs/:id', to: 'dogs#update'
  patch '/dogs/:id', to: 'dogs#update'
  get '/dogs/:id', to: 'dogs#show', as: 'dog'
  delete '/dogs/:id', to: 'dogs#destroy'
  get '/panel', to: 'home#panel'

  #resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
