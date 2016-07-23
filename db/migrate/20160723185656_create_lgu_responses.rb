class CreateLguResponses < ActiveRecord::Migration
  def change
    create_table :lgu_responses do |t|
      t.string :disaster_type
      t.datetime :logged_at
      t.decimal :longitude
      t.decimal :latitude
      t.text  :address
      t.integer :lgu_officer_id

      t.timestamps null: false
    end
  end
end
