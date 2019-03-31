Rails.application.routes.draw do
  resources :contacts
  resources :abouts
  resources :products
  resources :dealers
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
