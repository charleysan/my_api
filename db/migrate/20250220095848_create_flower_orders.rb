class CreateFlowerOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :flower_orders do |t|
      t.string :name
      t.integer :phonenumber

      t.timestamps
    end
  end
end
