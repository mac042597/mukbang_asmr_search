Rails.application.routes.draw do
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'
  get 'password_resets/new'
  root to: 'top#index'

  resources :onomatopoeias, only: [:index, :create, :edit, :update, :destroy]
  resources :foods, only: [:index, :create, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :destroy]
  resource :profiles, only: [:show, :edit, :update]

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get 'about', to: 'top#about' 
  get 'privacy_policy', to: 'top#privacy_policy'
  get 'terms_of_use', to: 'top#terms_of_use'

  get 'index', to: 'searches#index'

  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :onomatopoeias
    resources :foods
    resources :categories, only: [:new, :create, :index, :destroy]
    resources :users, only: [:index, :show, :edit, :update, :destroy]
  end
end
