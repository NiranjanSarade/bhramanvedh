class RenameDaysToDurationForTour < ActiveRecord::Migration
  def change
    rename_column :tours, :days, :duration
  end
end
