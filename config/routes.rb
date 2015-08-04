Rails.application.routes.draw do
  namespace :api do
  get 'products/index'
  end

  devise_for :users
  delete "/cart/remove_item/:id" => "pages#remove_item", as: 'remove_item'

  post "/cart/checkout" => "pages#checkout", as: 'checkout'
  post "/cart/add_to_cart/:id" => "pages#add_to_cart", as: 'add_to_cart'


  delete '/users/sign_out' => "pages#sign_out"
  get '/orders' => "pages#orders", as: 'orders'
  get "/cart" => "pages#cart", as: 'cart'
  get "/shop" => "pages#shop", as: 'shop'
  root to: "pages#home"

  namespace :api do
    resources :products, only: [:index]
  end
end
