Rails.application.routes.draw do
  devise_for :users
  
  namespace :current do
    resources :posts
  end

  root to: "current/posts#index"
end
