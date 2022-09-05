Rails.application.routes.draw do
  root to: 'top#index'

  resources :onomatopoeias, only: [:index]
  resources :foods, only: [:index]
  resources :users, only: [:new, :create]

  get 'search_japanese', to: 'onomatopoeia_searches#japanese_movies'
  get 'search_korean', to: 'onomatopoeia_searches#korean_movies'
  get 'search_japanese', to: 'food_searches#japanese_movies'
  get 'search_korean', to: 'food_searches#korean_movies'

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
