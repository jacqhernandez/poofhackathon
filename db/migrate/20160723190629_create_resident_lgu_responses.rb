class CreateResidentLguResponses < ActiveRecord::Migration
  def change
    create_table :resident_lgu_responses do |t|
      t.boolean :is_safe
      t.datetime :logged_at
      t.decimal :latitude
      t.decimal :longitude
      t.text  :address
      t.integer :resident_id
      t.integer :lgu_response_id

      t.timestamps null: false
    end
  end
end
