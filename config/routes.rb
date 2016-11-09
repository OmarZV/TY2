Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, :controllers => "users_controller.rb"
  resources :users do
  	resource :ranking, module: :users
  end
  resources :posts do
  	resource :like, module: :posts
  end
  
  root to: "posts#index"
 
end
