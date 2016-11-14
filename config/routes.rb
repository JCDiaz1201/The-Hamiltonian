Rails.application.routes.draw do
  root 				'visitors#index'
  get '/about',		to: 'visitors#about'

  resources 		:visitors, only:[:index, :show]
  resources 		:posts
  resources 		:users
end
