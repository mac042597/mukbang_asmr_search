Rails.application.routes.draw do
  root to: 'top#index'

  resources :onomatopoeias, only: [:index]
  resources :foods, only: [:index]
  resources :users, only: [:new, :create]
  get 'about', to: 'top#about' 

  get 'index', to: 'searches#index'

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
