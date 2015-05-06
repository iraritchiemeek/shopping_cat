Rails.application.routes.draw do
  namespace :api do
  get 'products/index'
  end

  devise_for :users
  post "/checkout" => "pages#checkout", as: 'checkout'
  post "/add_to_cart/:id" => "pages#add_to_cart", as: 'add_to_cart'
  get "/cart" => "pages#cart", as: 'cart'
  get "/shop" => "pages#shop", as: 'shop'
  root to: "pages#home"

  namespace :api do
    resources :products, only: [:index]
  end
end
