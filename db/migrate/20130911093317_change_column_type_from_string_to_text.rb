class ChangeColumnTypeFromStringToText < ActiveRecord::Migration
  def self.up
    change_table :tours do |t|
      t.change :details, :text
      t.change :inclusion, :text
      t.change :exclusion, :text
    end
  end

  def self.down
    change_table :tours do |t|
      t.change :details, :string
      t.change :inclusion, :string
      t.change :exclusion, :string
    end
  end
end
