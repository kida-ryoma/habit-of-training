class AddUserIdToDifficulty < ActiveRecord::Migration[6.0]
  def change
    add_reference :difficulties, :user, null: false, foreign_key: true
  end
end
