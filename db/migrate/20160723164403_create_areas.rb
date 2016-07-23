class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :province
      t.boolean :is_city
      t.decimal :longitude
      t.decimal :latitude
      t.integer :region_id

      t.timestamps null: false
    end
  end
end
