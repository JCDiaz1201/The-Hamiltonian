Rails.application.routes.draw do
  root 						'visitors#index'
  get 		'/about',	to: 'visitors#about'
  get 		'/show',	to: 'visitors#show'
  get    	'/login',   to: 'sessions#new'
  post   	'/login',   to: 'sessions#create'
  delete 	'/logout',  to: 'sessions#destroy'

  resources 		:visitors, only:[:index]
  resources 		:posts
  resources 		:users
end
