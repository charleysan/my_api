class ChangeInttoBigint < ActiveRecord::Migration[8.0]
  def change
    change_column :flower_orders, :phonenumber, :bigint
  end
end
