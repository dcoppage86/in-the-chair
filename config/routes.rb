Rails.application.routes.draw do

  root 'sessions#home'

  get '/signup' => 'users#new'
  # login
  get '/login' => "sessions#login"

  # logout
  delete '/logout' => "sessions#destroy"
  
  resources :providers
  resources :appointments
  resources :users
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
