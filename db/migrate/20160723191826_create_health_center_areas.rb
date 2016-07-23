class CreateHealthCenterAreas < ActiveRecord::Migration
  def change
    create_table :health_center_areas do |t|
      t.integer :health_center_id
      t.integer :area_id

      t.timestamps null: false
    end
  end
end
