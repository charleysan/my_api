class AddColumnScientificName < ActiveRecord::Migration[8.0]
  def change
    add_column :flowers, :scientific_name, :string
    #object/class :column adding into file : type of variable
  end
end
