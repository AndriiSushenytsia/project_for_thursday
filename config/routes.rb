Rails.application.routes.draw do
  devise_for :users

  resources :posts
  
  namespace :account do
    resources :posts
  end

  root to: "posts#index"
end
