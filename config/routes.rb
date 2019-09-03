Rails.application.routes.draw do

  get 'profile/show'
  get 'profile/edit'
  get 'profile/update'
	root 'items#index'

	resources :join_table_carts_items
  resources :carts, except: [:index]

  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
