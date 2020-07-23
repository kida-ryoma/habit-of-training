class CreateUserTrainingMenuNormals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_training_menu_normals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :training_menu_normal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
