class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.integer :day
      t.text :description
      t.integer :tour_id

      t.timestamps
    end
  end
end
