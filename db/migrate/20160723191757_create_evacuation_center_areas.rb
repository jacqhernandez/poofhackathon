class CreateEvacuationCenterAreas < ActiveRecord::Migration
  def change
    create_table :evacuation_center_areas do |t|
      t.integer :evacuation_center_id
      t.integer :area_id

      t.timestamps null: false
    end
  end
end
