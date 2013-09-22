class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :gender
      t.date :dob
      t.boolean :first_time

      t.timestamps
    end
  end
end
