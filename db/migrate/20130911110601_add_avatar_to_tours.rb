class AddAvatarToTours < ActiveRecord::Migration
  def self.up
    add_attachment :tours, :avatar
  end

  def self.down
    remove_attachment :tours, :avatar
  end
  
end
