Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products
  # resources :checkout, only: %i[create]
  post 'checkout/create', to: 'checkout#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :webhooks, only: [:create]
end
