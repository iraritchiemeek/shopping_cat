class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :total
      t.boolean :purchased
    end
  end
end
