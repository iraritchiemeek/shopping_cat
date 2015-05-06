class FixOrdersDefaultSpelling < ActiveRecord::Migration
  def up
    change_column :orders, :purchased, :boolean, :default => false
  end

  def down
    change_column :orders, :purchased, :boolean, :default => nil
  end
end
