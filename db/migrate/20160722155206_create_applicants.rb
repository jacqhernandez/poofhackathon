class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :email,              null: false, default: ""
      t.string :number,             null: false, default: ""
      t.string :name,               null: false, default: ""
      t.string :password, null: false, default: ""
      t.string :confirmation_code

      t.timestamps null: false
    end
  end
end
