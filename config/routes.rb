Rails.application.routes.draw do
  resources :contacts
  resources :abouts
  resources :products
  resources :dealers
  devise_for :users
  root to: 'products#index'

  get '/weeklyadds', to: "dealers#weeklyadds"
  get '/dailydeals', to: "dealers#dailydeals"
  get '/finders', to: "dealers#finders"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
