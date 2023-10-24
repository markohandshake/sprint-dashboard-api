class CreateAverages < ActiveRecord::Migration[7.0]
  def change
    create_table :averages do |t|
      t.integer :avg_velocity
      t.decimal :avg_sprint_completed, precision: 8, scale: 2
      t.integer :avg_pts_per_dev_per_day_per_sprint
      t.integer :avg_pts_per_dev_per_sprint
      t.integer :sprint_id
      t.timestamps
    end
  end
end
