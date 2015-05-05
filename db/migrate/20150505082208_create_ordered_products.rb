class CreateOrderedProducts < ActiveRecord::Migration
  def change
    create_table :ordered_products do |t|
      t.integer :product_id
      t.integer :user_id
    end
  end
end
