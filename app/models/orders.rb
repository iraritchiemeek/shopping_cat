class Orders < ActiveRecord::Base
  has_many :ordered_products
  has_many :products, through: :ordered_products
  belongs_to :user
end
