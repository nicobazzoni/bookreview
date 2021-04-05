Rails.application.routes.draw do
  root to: 'sessions#home'
  
  resources :posts 
  resources :comments
  resources :books
  resources :users
  resources :sessions
 

  delete '/sessions', to: 'sessions#destroy'

  get '/home', to: 'sessions#home'
  get '/login' , to: 'sessions#login'
  post '/login' , to: 'sessions#create'
  post '/logout' , to: 'sessions#destroy'
  get '/logout' , to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
