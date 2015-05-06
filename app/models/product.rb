class Product < ActiveRecord::Base
  has_many :orders
  has_many :products, through: :ordered_products
end
