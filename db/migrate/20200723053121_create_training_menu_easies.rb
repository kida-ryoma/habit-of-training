class CreateTrainingMenuEasies < ActiveRecord::Migration[6.0]
  def change
    create_table :training_menu_easies do |t|
      t.string :menu

      t.timestamps
    end
  end
end
