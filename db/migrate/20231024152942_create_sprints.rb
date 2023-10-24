class CreateSprints < ActiveRecord::Migration[7.0]
  def change
    create_table :sprints do |t|
      t.string :name
      t.string :status
      t.datetime :start_date
      t.datetime :end_date
      t.integer :squad_id
      t.timestamps
    end
  end
end
