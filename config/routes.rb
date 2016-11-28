Rails.application.routes.draw do
  root 						'visitors#index'
  get 			'/about',	to: 'visitors#about'
  get 			'/show',	to: 'visitors#show'
  get    		'/login',   to: 'sessions#new'
  post   		'/login',   to: 'sessions#create'
  get	 		'/logout',  to: 'sessions#destroy'

  resources 		:visitors, only:[:index]
  resources 		:posts
  resources 		:users
  
  resources :posts, :shallow => true do 
    resources :comments
  end
end
