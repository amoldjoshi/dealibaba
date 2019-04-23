Rails.application.routes.draw do
  resources :contacts
  resources :abouts
  resources :products
  resources :dealers
  root to: 'products#index'


  #devise_for :users, controllers:{registrations: "registrations"}

  get '/innovations', to: "products#innovations"
  get '/weeklyadds', to: "dealers#weeklyadds"
  get '/dailydeals', to: "dealers#dailydeals"
  get '/finders', to: "dealers#finders"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    Rails.application.routes.draw do
      devise_for :users, controllers: {
        registrations: "registrations"
      }
    end


end
