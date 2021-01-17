Rails.application.routes.draw do

  root to: 'photos#public'

  # user routes
  resources :users, only: [:new, :create]

  # photos routes
  get 'user/photos', to: 'photos#private'
  get 'upload', to: 'photos#new'
  post 'user/photos', to: 'photos#create'
  delete 'user/photos', to: 'photos#delete'
 
  delete '/sessions', to: 'sessions#logout'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
