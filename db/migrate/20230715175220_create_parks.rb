class CreateParks < ActiveRecord::Migration[7.0]
  def change
    create_table :parks do |t|
      t.string :full_name
      t.text :description
      t.text :direction_info
      t.string :hours_of_operation
      t.string :state

      t.timestamps
    end
  end
end
