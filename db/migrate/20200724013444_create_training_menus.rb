class CreateTrainingMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :training_menus do |t|
      t.string :menu

      t.timestamps
    end
  end
end
