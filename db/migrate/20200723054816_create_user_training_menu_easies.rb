class CreateUserTrainingMenuEasies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_training_menu_easies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :training_menu_easy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
