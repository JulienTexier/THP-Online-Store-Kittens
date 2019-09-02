Rails.application.routes.draw do
	resources :join_table_carts_items
  resources :carts
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
