Rails.application.routes.draw do
  get 'idproofs/index'
  get 'idproof/index'
  resources :categories
  resources :productimages
  resources :idproofs 
  devise_for :merchants
  #  root to: "migrate#index"
  # get 'products/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  resources :products
end
