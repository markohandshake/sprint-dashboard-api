class CreateActuals < ActiveRecord::Migration[7.0]
  def change
    create_table :actuals do |t|
      t.integer :unplanned_pto
      t.integer :adjust_max_number_of_points
      t.integer :completed_points
      t.integer :unfinished_points
      t.integer :sprint_id
      t.timestamps
    end
  end
end
