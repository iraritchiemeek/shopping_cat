class ChangeOrdersTableFieldPurchasedDefaultToFalse < ActiveRecord::Migration
  def change
    change_column :orders, :purchased, :boolean, default: false
  end
end
