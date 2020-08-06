Rails.application.routes.draw do
  resources :items
  resources :articles
  resources :promotions
  resources :contacts
  resources :abouts
  resources :products
  resources :dealers
  root to: 'products#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  get '/innovations', to: "products#innovations"
  get '/weeklyadds', to: "dealers#weeklyadds"
  get '/blackfriday', to: "dealers#blackfriday"
  get '/dailydeals', to: "dealers#dailydeals"
  get '/finders', to: "dealers#finders"
  get '/associates', to: "dealers#associates"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
