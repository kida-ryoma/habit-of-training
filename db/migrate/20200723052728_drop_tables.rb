class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :training_menus
  end
end
