class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.string :details
      t.integer :days
      t.date :departure
      t.date :arrival
      t.integer :fees
      t.string :inclusion
      t.string :exclusion
      t.integer :sub_type_id
      t.integer :max_participants

      t.timestamps
    end
  end
end
