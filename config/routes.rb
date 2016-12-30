Rails.application.routes.draw do
  devise_for :users
  member do
    post :join
    post :quit
  end
  resources :groups do
    resources :posts
  end
  root 'groups#index'
end
