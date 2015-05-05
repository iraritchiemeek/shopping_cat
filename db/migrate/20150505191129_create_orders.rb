class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :total
      t.boolean :purchased, deafult: false

      t.timestamps
    end
  end
end
