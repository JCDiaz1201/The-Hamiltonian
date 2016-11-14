Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :pages
  root 		to: 'visitors#index'
end
