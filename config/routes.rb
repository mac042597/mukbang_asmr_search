Rails.application.routes.draw do
  get 'foods/index'
  resources :onomatopoeias
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'onomatopoeias#index'
end
