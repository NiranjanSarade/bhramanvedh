class CreateSubTypes < ActiveRecord::Migration
  def change
    create_table :sub_types do |t|
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end
end
