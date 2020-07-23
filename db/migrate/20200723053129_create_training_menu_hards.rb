class CreateTrainingMenuHards < ActiveRecord::Migration[6.0]
  def change
    create_table :training_menu_hards do |t|
      t.string :menu

      t.timestamps
    end
  end
end
