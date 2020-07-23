class TrainingMenuNormal < ApplicationRecord
  has_many :users, through: :user_training_menu_normals
  has_many :user_training_menu_normal
end
