class ChangeDecimalToInteger < ActiveRecord::Migration[8.0]
  def change
    change_column :flowers, :quantity, :integer
    # change_column :table_name, :column_name, :new_data_type
  end
end
