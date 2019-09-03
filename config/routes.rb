Rails.application.routes.draw do
	root 'items#index'
  resources :join_items_orders
  resources :orders
	resources :join_table_carts_items
  resources :carts, except: [:index]
  resources :profile, only: [:show, :edit, :update]
  resources :items
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
