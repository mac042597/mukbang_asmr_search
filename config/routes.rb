Rails.application.routes.draw do
  root to: 'onomatopoeias#index'

  resources :onomatopoeias
  resources :users, only: [:new, :create]
  
  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
  end
end
