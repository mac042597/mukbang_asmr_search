Rails.application.routes.draw do
  resources :onomatopoeias
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'onomatopoeias#index'
end
