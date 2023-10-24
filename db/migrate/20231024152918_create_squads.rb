class CreateSquads < ActiveRecord::Migration[7.0]
  def change
    create_table :squads do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id
    end
  end
end
