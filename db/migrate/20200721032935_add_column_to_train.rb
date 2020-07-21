class AddColumnToTrain < ActiveRecord::Migration[6.0]
  def change
    add_reference :trains, :user, null: false, foreign_key: true
  end
end
