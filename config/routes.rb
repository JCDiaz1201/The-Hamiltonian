Rails.application.routes.draw do
  root 				'visitors#index'
  get '/about',		to: 'visitors#about'
  get '/show',		to: 'visitors#show'

  resources 		:visitors, only:[:index]
  resources 		:posts
  resources 		:users
end
