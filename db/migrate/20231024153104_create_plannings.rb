class CreatePlannings < ActiveRecord::Migration[7.0]
  def change
    create_table :plannings do |t|
      t.integer :devs_count
      t.integer :working_days
      t.integer :planned_pto
      t.integer :recommended_number_of_points
      t.integer :committed_points
      t.integer :sprint_id
      t.timestamps
    end
  end
end
