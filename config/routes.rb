Rails.application.routes.draw do

  devise_for :users

  get "/about" => "pages#shop", as: 'about'
  root to: "pages#home"
end
