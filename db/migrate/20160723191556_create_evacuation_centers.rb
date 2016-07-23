class CreateEvacuationCenters < ActiveRecord::Migration
  def change
    create_table :evacuation_centers do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_number
      t.decimal :longitude
      t.decimal :latitude
      t.text :address

      t.timestamps null: false
    end
  end
end
