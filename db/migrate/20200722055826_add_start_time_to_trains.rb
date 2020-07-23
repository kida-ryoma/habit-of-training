class AddStartTimeToTrains < ActiveRecord::Migration[6.0]
  def change
    add_column :trains, :start_time, :date
  end
end
