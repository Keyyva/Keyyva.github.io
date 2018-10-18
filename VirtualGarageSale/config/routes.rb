Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: {
  	registrations: 'registrations'
  }
  
  #root 'store#index'
  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
