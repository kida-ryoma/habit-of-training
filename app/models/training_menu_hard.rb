class TrainingMenuHard < ApplicationRecord
  has_many :users, through: :user_training_menu_hards
  has_many :user_training_menu_hard
end
