Rails.application.routes.draw do
  devise_for :users
  post "/add_to_cart/:id" => "pages#add_to_cart", as: 'add_to_cart'
  get "/cart" => "pages#cart", as: 'cart'
  get "/shop" => "pages#shop", as: 'shop'
  root to: "pages#home"
end
