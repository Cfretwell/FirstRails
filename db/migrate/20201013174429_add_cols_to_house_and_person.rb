class AddColsToHouseAndPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :created_at, :datetime, null: false 
    add_column :houses, :updated_at, :datetime, null: false 

    add_column :people, :created_at, :datetime, null: false 
    add_column :people, :updated_at, :datetime, null: false 

    change_column_null :people, :name, false
    change_column_null :people, :house_id, false

  end
end
