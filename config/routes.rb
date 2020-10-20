Rails.application.routes.draw do
  get '/dogs', to: 'dogs#index'
  get '/dogs/new', to: 'dogs#new'
  post '/dogs', to: 'dogs#create'
  #resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
