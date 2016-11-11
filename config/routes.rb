Rails.application.routes.draw do
  resources :chatrooms do
  	resource :chatroom_users
  	resources :messages
  end
  resources :direct_messages
  resources :events
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, :controllers => "users_controller.rb"
  resources :users do
  	resource :ranking, module: :users
  	member do
  		post :follow
  	end
  end
  resources :posts do
  	resource :like, module: :posts
  	member do
  		post :bookmark
  	end
  end
  
  root to: "posts#index"
 
end
