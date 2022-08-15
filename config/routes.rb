Rails.application.routes.draw do
  root to: 'top#index'

  resources :onomatopoeias, only: [:index]
  resources :users, only: [:new, :create]
  
  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :onomatopoeias
    resources :foods
    resources :categories, only: [:new, :create, :index, :destroy]
  end
end
