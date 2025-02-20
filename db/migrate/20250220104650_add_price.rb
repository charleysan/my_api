class AddPrice < ActiveRecord::Migration[8.0]
  def change
    add_column :flower_orders, :price, :decimal
  end
end
