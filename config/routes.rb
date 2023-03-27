Rails.application.routes.draw do
  resources :wishlists
  resources :orders
  # get 'idproofs/index'
  # get 'idproof/index'
  resources :categories
  # resources :productimages
  resources :idproofs 
  devise_for :merchants
  #  root to: "migrate#index"
  # get 'products/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "products#index"
  resources :products do
    member do
      get :cart , to: 'carts#cart'
      get :wishlist, to: 'wishlists#create'
    end
  end
  
  resources :carts do
    member do
      get :order, to: "orders#create" 
      get :remove_from_carts, to: "carts#destroy"
    end
  end
  
  resources :wishlists do
   member do
    get :remove_from_wishlists, to: "wishlists#destroy"
   end 
  end

  resources :productimage
end
