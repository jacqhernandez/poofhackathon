class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.decimal :longitude
      t.decimal :latitude
      t.string :phone_number
      t.string :phone_subscriber
      t.boolean :is_safe
      t.integer :area_id

      t.timestamps null: false
    end
  end
end
