class Order < ActiveRecord::Base
  has_many :ordered_products
  has_many :products, through: :ordered_products
  belongs_to :user

  def add_item(product_id)
    ordered_product = Product.where('id = ?', @product_id).first
  if ordered_product
    save
  else
    Order.product.create(name: @product)
  end
    save
  end

  def formatted_products
    unique_products = self.products.uniq
    output = []
    unique_products.each do |unique_product|
      output << {name: unique_product.name, quantity: self.products.to_a.count {|p| unique_product.name == p.name}, price: unique_product.price, id:unique_product.id}
    end
    return output
  end

  def total
    sum = 0
    self.products.each do |product|
      sum += product.price
    end
    return sum
  end
end
