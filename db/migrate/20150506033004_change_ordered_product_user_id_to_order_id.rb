class ChangeOrderedProductUserIdToOrderId < ActiveRecord::Migration
  def change
    rename_column :ordered_products, :user_id, :order_id
  end
end
