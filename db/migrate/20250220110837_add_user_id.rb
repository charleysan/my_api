class AddUserId < ActiveRecord::Migration[8.0]
  def change
    add_column :flower_orders, :user_id, :integer
  end
end
