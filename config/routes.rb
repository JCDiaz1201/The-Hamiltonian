Rails.application.routes.draw do
  resources :posts

  root 				to: 'visitors#index'
  get	'/posts',	to: 'posts#index'

  # get '/users', to: 'users#index'
  # #get 'user/username:string'
  # #get 'user/email:string'
end
