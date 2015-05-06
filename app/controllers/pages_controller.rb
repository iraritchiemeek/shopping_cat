class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:shop]

  def home
  end

  def shop
    @cart = current_user.orders.create unless @cart = Order.find_by(user_id: current_user.id, purchased: false)
    session[:cart_id] = @cart.id
    @products = Product.all
  end

  def cart
    @cart = Order.find(session[:cart_id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    @cart = Order.find(session[:cart_id])
    @cart.ordered_products.create(product_id: @product.id, order_id: @cart.id)
    redirect_to cart_path
  end

end
