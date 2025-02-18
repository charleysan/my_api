class CreateFlowers < ActiveRecord::Migration[8.0]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :color
      t.decimal :quantity
      t.string :meaning

      t.timestamps
    end
  end
end
