class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :about
      t.text :who
      t.text :why
      t.integer :amount,  default: 0
      t.boolean :featured,   default: false

      t.timestamps null: false
    end
  end
end
