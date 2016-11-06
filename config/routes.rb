Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :posts do
  	resource :like, module: :posts
  end
  
  root to: "posts#index"
 
end
